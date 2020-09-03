import json
import math
import os
from shutil import copyfile
from onshape_client.oas import BTFeatureScriptEvalCall2377
from onshape_client.onshape_url import OnshapeElement
from onshape_client.utility import parse_quantity
from onshape_client import Client
from pint import UnitRegistry

ureg =  UnitRegistry()

msg_str = "message"
val_str = "value"
key_str = "key"

# create global roles using this: https://stackoverflow.com/questions/9698702/how-do-i-create-a-global-role-roles-in-sphinx
# If this grows too much, we'll need to add a global rst as described in the post above.
def parse_quantity(q):
    """
    Parse an Onshape units definition
    Args:
        q:an Onshape units definition... for instance:
            {
              'typeTag': '',
              'unitToPower': [
                {
                  'key': 'METER',
                  'value': 1
                }
              ],
              'value': 0.0868175271040671
            }
    Returns:
        a string that can be converted to any other unit engine.
    >>> from onshape_client.utility import parse_quantity
    >>> d = {'value': 0.1414213562373095, 'unitToPower': [{'value': 1, 'key': 'METER'}], 'typeTag': ''}
    >>> parse_quantity(d)
    '0.1414213562373095*meter'
    >>> d = {'value': 0.1414213562373095, 'unitToPower': [{'value': 3, 'key': 'MILLIMETER'}], 'typeTag': ''}
    >>> parse_quantity(d)
    '0.1414213562373095*millimeter**3'
    """
    units_s = q[val_str]
    for u in q["unitToPower"]:
        units_s = units_s * ureg(u[key_str].lower()) ** u[val_str]
        try:
            log = math.floor(math.log10(units_s.magnitude))
        except:
            log = 0
        if u[key_str] == 'METER' and u[val_str] == 1:
            if log >= 3:
                units_s = units_s.to(ureg.kilometer)
            elif log >= -2 and log <= -1:
                units_s = units_s.to(ureg.centimeter)
            elif log <= -3:
                units_s = units_s.to(ureg.millimeter)
        elif u[key_str] == 'METER' and u[val_str] == 2:
            if log >= 6:
                units_s = units_s.to(ureg.kilometer**2)
            elif log >= -4 and log <= -1:
                units_s = units_s.to(ureg.centimeter**2)
            elif log <= -5:
                units_s = units_s.to(ureg.millimeter**2)
        elif u[key_str] == 'METER' and u[val_str] == 3:
            log += 3
            if log >= 3:
                units_s = units_s.to(ureg.kiloliter)
            elif log <= -1:
                units_s = units_s.to(ureg.milliliter)
            else:
                units_s = units_s.to(ureg.liter)
    return f'{round(units_s, 2):~}'

def is_fs_type(candidate, type_name):
    result = False
    try:
        if isinstance(type_name, str):
            result = type_name == candidate["typeName"]
        elif isinstance(type_name, list):
            result = any(
                [type_name_one == candidate["typeName"] for type_name_one in type_name]
            )
    except Exception:
        result = False
    return result

def move_to_docs(file_path, base="doc_files"):
    file = os.path.basename(file_path)
    dir = os.path.dirname(file_path)
    while os.path.basename(dir) != base:
        file = os.path.basename(dir) + "/" + file
        dir = os.path.dirname(dir)
    try:
        copyfile(file_path, file)
    except IOError as io_err:
        os.makedirs(os.path.dirname(file))
        copyfile(file_path, file)

def parse_variables_from_list(unparsed):
    measurement_list = []

    for to_parse in unparsed:
        if is_fs_type(to_parse, "BTFSValueWithUnits"):
            measurement_list.append(parse_quantity(to_parse[msg_str]))
        elif is_fs_type(to_parse, ["BTFSValueNumber", "BTFSValueString"]):
            measurement_list.append(to_parse[msg_str][val_str])

    return measurement_list

def merge_index_sections(new_section, old_section):
    for line in old_section:
        if line in new_section:
            continue
        else:
            new_section.append(line)

def merge_indexes(new_index, old_index):
    section_start = ".. toctree::\n"
    section_end = "\n"

    old_section_limits = []
    old_start = 0
    first_newline = True
    old_index_file = open(old_index, "r+")
    old_lines = old_index_file.readlines()

    for i, old_line in enumerate(old_index_file):
        if old_line == section_start:
            old_start = i
        if old_line == section_end and old_start != 0:
            if first_newline:
                first_newline = False
            else:
                old_end = i
                old_section_limits.append([old_start, old_end])
                old_start = old_end = 0
                first_newline = True

    old_index_file.close()

    new_section_limits = []
    new_start = 0
    first_newline = True
    new_index_file = open(new_index, "r+")
    new_lines = new_index_file.readlines()

    for j, new_line in enumerate(new_index_file):
        if new_line == section_start:
            new_start = j
        if new_line == section_end and new_start != 0:
            if first_newline:
                first_newline = False
            else:
                new_end = j
                new_section_limits.append([new_start, new_end])
                new_start = new_end = 0
                first_newline = True

    new_index_file.close()

    for start, end in old_section_limits:
        included = False
        caption = old_lines[start+1]
        for new_start, new_end in new_section_limits:
            if new_lines[new_start+1] == caption:
                new_section = merge_index_sections(new_lines[new_start:new_end], old_lines[start:end])
                del new_lines[new_start:new_end]
                i = new_start
                for line in new_section:
                    new_lines.insert(i, line)
                    i += 1
                included = True
        if not included:
            i = new_end
            new_lines.insert(i, "\n")
            for line in old_lines[start:end]:
                i += 1
                new_lines.insert(i, line)

    new_index_file = open(new_index, "w+")
    new_index_file.write("".join(new_lines))
    new_index_file.close()

    os.remove(old_index)
    copyfile(new_index, old_index)
    os.remove(new_index)

def merge_treatment_processes(new_processes, old_processes):
    section_delimiter = ".. heading"

    old_section_limits = []
    old_start = 0
    old_file = open(old_processes, "r+")
    old_lines = old_file.readlines()

    for i, old_line in enumerate(old_file):
        if section_delimiter in old_line:
            old_end = i - 1
            old_section_limits.append([old_start, old_end])
            old_start = i

    old_section_limits.append([old_start,len(old_lines)])
    old_file.close()

    new_section_limits = []
    new_start = 0
    new_file = open(new_processes, "r+")
    new_lines = new_file.readlines()

    for j, new_line in enumerate(new_file):
        if section_delimiter in new_line:
            new_end = j - 1
            new_section_limits.append([new_start, new_end])
            new_start = j

    new_section_limits.append([new_start,len(new_lines)])
    new_file.close()

    for start, end in new_section_limits:
        included = False
        heading = new_lines[start]
        for old_start, old_end in old_section_limits:
            if old_lines[old_start] == heading:
                included = True
        if not included:
            i = old_end
            old_lines.insert(i, "\n")
            for line in new_lines[start:end]:
                i += 1
                old_lines.insert(i, line)

    old_file = open(old_processes, "w+")
    old_file.write("".join(old_lines))
    old_file.close()

def parse_variables_from_map(unparsed, default_key):
    parsed_variables = {}
    value = None
    templates = []

    if default_key == "template":
        move_to_docs(unparsed)
        templates.append(unparsed)
        return parsed_variables, templates
    elif default_key == "index":
        if unparsed != "" and unparsed is not None:
            if os.path.exists('index.rst'):
                copyfile(unparsed, 'new_index.rst')
                merge_indexes('new_index.rst', 'index.rst')
            else:
                copyfile(unparsed, 'index.rst')
        return parsed_variables, templates
    elif default_key == "process":
        # write function to download that process
        # name it treatmentprocess.rst unless treatmentproecss.rst already exists
        # if treatmentprocss.rst is not None:
            # merge_treatment_processes(treatmentprocess.rst, newprocess.rst
        if unparsed != "" and unparsed is not None:
            file = "Introduction/Treatment_Process.rst"
            file_path = "../../../../doc_files/Introduction/Treatment_Process_" + unparsed + ".rst"
            if os.path.exists(file):
                merge_treatment_processes(file_path, file)
            else:
                try:
                    copyfile(file_path, file)
                except IOError as io_err:
                    os.makedirs(os.path.dirname(file))
                    copyfile(file_path, file)
        return parsed_variables, templates

    if isinstance(unparsed, list):
        for to_parse in unparsed:
            if is_fs_type(to_parse, "BTFSValueMapEntry"):
                key = to_parse[msg_str][key_str][msg_str][val_str]
                candidate_message = to_parse[msg_str][val_str]
                if is_fs_type(candidate_message, "BTFSValueMap"):
                    value, template = parse_variables_from_map(candidate_message[msg_str][val_str])
                    templates.extend(template)
                elif is_fs_type(candidate_message,  "BTFSValueArray"):
                    value = parse_variables_from_list(candidate_message[msg_str][val_str])
                elif is_fs_type(candidate_message, "BTFSValueWithUnits"):
                    value = parse_quantity(candidate_message[msg_str])
                elif is_fs_type(candidate_message, ["BTFSValueNumber", "BTFSValueString"]):
                    value = candidate_message[msg_str][val_str]
                parsed_variables[key] = value
    else:
        parsed_variables[default_key] = unparsed

    return parsed_variables, templates

def parse_attributes(attributes, type_tag, fields):
    measurements = {}
    templates = []

    for attr in attributes:
        if is_fs_type(attr, "BTFSValueMap"):
            if attr[msg_str]["typeTag"] == type_tag:
                for attr2 in attr[msg_str][val_str]:
                    docs = attr2[msg_str][val_str][msg_str][val_str]
                    for doc in docs:
                        for unparsed in doc[msg_str][val_str]:
                            if is_fs_type(unparsed, "BTFSValueMapEntry"):
                                key = unparsed[msg_str][key_str][msg_str][val_str]
                                for field in fields:
                                    if key == field:
                                        new_measure, new_templates = parse_variables_from_map(unparsed[msg_str][val_str][msg_str][val_str], key)
                                        measurements.update(new_measure)
                                        templates.extend(new_templates)

    for i in range(len(templates)):
        new_template = './' + os.path.basename(os.path.dirname(templates[i])) + \
                       '/' + os.path.basename(templates[i])
        templates[i] = new_template

    return measurements, templates

def get_parsed_measurements(link):
    script = r"""
        function (context is Context, queries is map)
        {
            return getAttributes(context, {
                "entities" : qEverything(),
                // "attributePattern" : { 'type' : 'Documenter' }
            });
        }
        """

    client = Client(
        configuration = {
            "base_url": "https://cad.onshape.com",
            "access_key": "ekAHCj04TtODlvlI9yWj2bjB",
            "secret_key": "sS11vEOD5CavkLVcZshLBgfBlB5aBvnpz6v3oEvC0bN0zxhW"
        }
    )

    # will probably need to turn this into a loop if there are more parts together but need to handle duplicate variables
    element = OnshapeElement(link)
    # element = OnshapeElement("https://cad.onshape.com/documents/c3a8ce032e33ebe875b9aab4/w/de9ad5474448b34f33fef097/e/d75b2f7a41dde39791b154e8")

    script_call = BTFeatureScriptEvalCall2377(script=script)
    response = client.part_studios_api.eval_feature_script(
        element.did,
        element.wvm,
        element.wvmid,
        element.eid,
        bt_feature_script_eval_call_2377=script_call,
        _preload_content=False,
    )

    attributes = json.loads(response.data.decode("utf-8"))["result"][msg_str][val_str]
    type_tag = "Documenter"
    fields = ["variables", "template", "index", "process"]

    measurements, templates = parse_attributes(attributes, type_tag, fields)

    return measurements, templates

# from https://stackoverflow.com/questions/5914627/prepend-line-to-beginning-of-a-file
def line_prepender(filename, line):
    with open(filename, 'r+') as f:
        content = f.read()
        f.seek(0, 0)
        f.write(line.rstrip('\r\n') + '\n' + content)

# TODO: change name
def make_replace_file(parsed_dict, filename, var_attachment=''):
    prefix = '.. |'
    suffix = '| replace:: '

    for var in parsed_dict:
        if type(parsed_dict[var]) == dict:
            make_replace_file(parsed_dict[var], filename, var_attachment + var + "_")
        else:
            line = prefix + var_attachment + str(var) + suffix + str(parsed_dict[var])
            line_prepender(filename, line)
