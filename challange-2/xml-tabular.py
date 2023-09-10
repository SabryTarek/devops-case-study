import xml.etree.ElementTree as ET
from tabulate import tabulate


# Load the XML file
tree = ET.parse('data.xml')
root = tree.getroot()

# Create an empty list to store key-value pairs
key_value_pairs = []

# Iterate over 'add' elements to extract key-value pairs
for add_element in root.findall(".//add"):
    key = add_element.get("key")
    value = add_element.get("value")
    key_value_pairs.append({'Key': key, 'Value': value})


print(tabulate(key_value_pairs, headers="keys", tablefmt="grid"))
