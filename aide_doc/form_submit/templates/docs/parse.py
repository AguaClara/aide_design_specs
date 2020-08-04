import json
import math
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

def parse_variables_from_list(unparsed):
    measurement_list = []

    for to_parse in unparsed:
        if is_fs_type(to_parse, "BTFSValueWithUnits"):
            measurement_list.append(parse_quantity(to_parse[msg_str]))
        elif is_fs_type(to_parse, ["BTFSValueNumber", "BTFSValueString"]):
            measurement_list.append(to_parse[msg_str][val_str])

    return measurement_list

def parse_variables_from_map(unparsed, default_key):
    parsed_variables = {}
    value = None

    if default_key == "url":
        pass
        # write function to download that rst for editing, or if possible, that folder
        # might have to be a file path instead of url
    elif default_key == "index":
        # write function to download that index
        # name it index.rst unless index.rst already exists
        # if index.rst is not None:
            # merge_indexes(index.rst, newindex.rst)
        pass
    elif default_key == "process":
        # write function to download that process
        # name it treatmentprocss.rst unless treatmentprocss.rst already exists
        # if treatmentprocss.rst is not None:
            # merge_treatment_processes(treatmentprocss.rst, newxprocess.rst
        pass
    elif default_key == "language":
        # set language variable to this
        pass

    if isinstance(unparsed, list):
        for to_parse in unparsed:
            if is_fs_type(to_parse, "BTFSValueMapEntry"):
                key = to_parse[msg_str][key_str][msg_str][val_str]
                candidate_message = to_parse[msg_str][val_str]
                if is_fs_type(candidate_message, "BTFSValueMap"):
                    value = parse_variables_from_map(candidate_message[msg_str][val_str])
                elif is_fs_type(candidate_message,  "BTFSValueArray"):
                    value = parse_variables_from_list(candidate_message[msg_str][val_str])
                elif is_fs_type(candidate_message, "BTFSValueWithUnits"):
                    value = parse_quantity(candidate_message[msg_str])
                elif is_fs_type(candidate_message, ["BTFSValueNumber", "BTFSValueString"]):
                    value = candidate_message[msg_str][val_str]
                parsed_variables[key] = value
    else:
        parsed_variables[default_key] = unparsed

    return parsed_variables

def parse_attributes(attributes, type_tag, fields):
    measurements = {}

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
                                        measurements.update(parse_variables_from_map(unparsed[msg_str][val_str][msg_str][val_str], key))

    return measurements

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
    fields = ["variables", "url", "index", "process"]

    measurements = parse_attributes(attributes, type_tag, fields)

    return measurements

# TODO: move this file and index file to "docs" folder
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
