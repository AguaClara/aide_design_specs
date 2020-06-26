import os
import json
from onshape_client.oas import BTFeatureScriptEvalCall2377
from onshape_client.onshape_url import OnshapeElement
from onshape_client.utility import parse_quantity
from onshape_client import Client
from pint import UnitRegistry
import math
ureg =  UnitRegistry()


if os.path.exists("test.rst"):
    os.remove("test.rst")

var_to_onshape = {'o': 'k', 'h': 'i'}

f = open('test.rst', 'w+')

for var in var_to_onshape:
    f.write('.. |' + var + '| replace:: ' + var_to_onshape[var] + '\n')

f.close()

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
    units_s = q["value"]
    for u in q["unitToPower"]:
        units_s = units_s * ureg(u["key"].lower()) ** u["value"]
        try:
            log = math.floor(math.log10(units_s.magnitude))
        except:
            log = 0
        if u["key"] == 'METER' and u["value"] == 1:
            if log >= 3:
                units_s = units_s.to(ureg.kilometer)
            elif log >= -2 and log <= -1:
                units_s = units_s.to(ureg.centimeter)
            elif log <= -3:
                units_s = units_s.to(ureg.millimeter)
        elif u["key"] == 'METER' and u["value"] == 2:
            if log >= 6:
                units_s = units_s.to(ureg.kilometer**2)
            elif log >= -4 and log <= -1:
                units_s = units_s.to(ureg.centimeter**2)
            elif log <= -5:
                units_s = units_s.to(ureg.millimeter**2)
        elif u["key"] == 'METER' and u["value"] == 3:
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

def parse_variables_from_map(unparsed):
    parsed_variables = {}
    measurement_list = []
    value = None
    is_map = False
    for to_parse in unparsed:
        if is_fs_type(to_parse, "BTFSValueMapEntry"):
            is_map = True
            key = to_parse["message"]["key"]["message"]["value"]
            candidate_message = to_parse["message"]["value"]
            if is_fs_type(candidate_message, ["BTFSValueMap", "BTFSValueArray"]):
                value = parse_variables_from_map(candidate_message["message"]["value"])
            elif is_fs_type(candidate_message, "BTFSValueWithUnits"):
                value = parse_quantity(candidate_message["message"])
            elif is_fs_type(candidate_message, ["BTFSValueNumber", "BTFSValueString"]):
                value = candidate_message["message"]["value"]
            parsed_variables[key] = value
        # should ultimately write a new function that deals with lists
        elif is_fs_type(to_parse, "BTFSValueWithUnits"):
            measurement_list.append(parse_quantity(to_parse["message"]))
        elif is_fs_type(to_parse, ["BTFSValueNumber", "BTFSValueString"]):
            measurement_list.append(to_parse["message"]["value"])
    if is_map:
        return parsed_variables
    return measurement_list

script = r"""
    function(context, queries) {
            return getAllVariables(context);
        }
    """

client = Client(
    configuration = {
        "base_url": "https://cad.onshape.com",
        "access_key": "ekAHCj04TtODlvlI9yWj2bjB",
        "secret_key": "sS11vEOD5CavkLVcZshLBgfBlB5aBvnpz6v3oEvC0bN0zxhW"
    }
)

#will probably need to turn this into a loop if there are more parts together but need to handle duplicate variables
element = OnshapeElement("https://cad.onshape.com/documents/c3a8ce032e33ebe875b9aab4/w/de9ad5474448b34f33fef097/e/1336f29c2649ad86aceaeaeb")
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
measurements = json.loads(response.data.decode("utf-8"))["result"]["message"]["value"]

parsed_measurements = parse_variables_from_map(measurements)
