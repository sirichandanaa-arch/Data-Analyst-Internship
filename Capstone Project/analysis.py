import pandas as pd
import numpy as np

INPUT_FILE = "Sample data (1).xlsx"

df = pd.read_excel(INPUT_FILE)
df.columns = [c.strip() for c in df.columns]
df["Date"] = pd.to_datetime(df["Date"], errors="coerce")
df["Discount Band"] = df["Discount Band"].fillna("Not Specified")
df["Profit Margin %"] = np.where(df["Sales"] != 0, df["Profit"] / df["Sales"] * 100, 0)

print("Shape:", df.shape)
print("\nMissing values before cleaning:")
print(pd.read_excel(INPUT_FILE).isna().sum())
print("\nDuplicate rows:", df.duplicated().sum())

print("\nKPI SUMMARY")
print("Total Sales:", df["Sales"].sum())
print("Total Profit:", df["Profit"].sum())
print("Total Units Sold:", df["Units Sold"].sum())
print("Overall Profit Margin %:", df["Profit"].sum() / df["Sales"].sum() * 100)

for col in ["Product", "Country", "Segment", "Year"]:
    result = df.groupby(col).agg(
        Sales=("Sales","sum"),
        Profit=("Profit","sum"),
        Units_Sold=("Units Sold","sum")
    ).sort_values("Sales", ascending=False)
    print(f"\n--- {col} ---")
    print(result)

monthly = df.groupby(["Month Number","Month Name"]).agg(
    Sales=("Sales","sum"),
    Profit=("Profit","sum")
).reset_index().sort_values("Month Number")
print("\n--- Monthly Trend ---")
print(monthly)
