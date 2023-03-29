import envless

envless.script_dependencies({"requests": "==2.28.2"}, __file__)

import sys

import requests

response = requests.get("https://python.org")
print(sys.argv)
assert sys.argv[1:] == ["a", "b", "c"]
