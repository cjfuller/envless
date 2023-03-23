import envless

envless.script_dependencies({"pandas": "==1.5.3"}, __file__)

import pandas as pd

print(pd.DataFrame([{"envless": "ok"}]))
