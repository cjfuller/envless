import envless

envless.script_dependencies({"requests": "==2.28.2"}, __file__)

import requests

response = requests.get("https://python.org")
print(response.text)
