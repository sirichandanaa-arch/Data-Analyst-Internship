import pandas as pd

# 1. Read the CSV file
df = pd.read_csv("data.csv")

# 2. Inspect the dataset
print("First 5 rows:")
print(df.head())

print("\nMissing values:")
print(df.isnull().sum())

# 3. Handle missing values
df["Calories"] = df["Calories"].fillna(df["Calories"].mean())

# 4. Remove duplicate rows
df = df.drop_duplicates()

# 5. Convert Date into proper date format
df["Date"] = pd.to_datetime(df["Date"], errors="coerce")
df = df.dropna(subset=["Date"])

# 6. Filter rows
filtered_df = df[df["Calories"] > 300]

print("\nFiltered rows (Calories > 300):")
print(filtered_df)

# 7. Create a new column
df["Calories_per_minute"] = df["Calories"] / df["Duration"]

print("\nDataset with new column:")
print(df)

# 8. Save the cleaned dataset
df.to_csv("cleaned_data.csv", index=False)

print("\nCleaned dataset saved successfully!")