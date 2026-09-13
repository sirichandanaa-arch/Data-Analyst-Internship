import json
import pandas as pd

with open("api_users.json", "r") as file:
    data = json.load(file)

df = pd.json_normalize(data)

df.to_csv("api_users.csv", index=False)

print("JSON converted to CSV successfully!")
print(df.head())