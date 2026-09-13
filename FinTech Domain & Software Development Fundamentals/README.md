# REST API & JSON Data Extraction

## Objective

Call a public REST API, inspect the JSON response, and convert the data into CSV format for analysis.

## API Used

**API:** JSONPlaceholder  
**Endpoint:** https://jsonplaceholder.typicode.com/users  
**HTTP Method:** GET  
**Authentication:** Not required

## API Request

A GET request was sent to the `/users` endpoint using Postman.

The API returned user information in JSON format.

## JSON Response

The response contains user records with fields such as:

- ID
- Name
- Username
- Email
- Phone
- Website
- Address
- Company

Some fields, such as `address` and `company`, are nested JSON objects.

## JSON to CSV Conversion

Python and Pandas were used to convert the JSON data into CSV format.

The `json_normalize()` function was used to flatten the nested JSON structure into tabular columns.

The conversion script is available in:

`api_to_csv.py`

## Output

The converted dataset is available as:

`api_users.csv`

The resulting CSV contains **15 columns** and can be used for further data analysis.

## Files

| File | Description |
|---|---|
| `api_users.json` | JSON response obtained from the public API |
| `api_to_csv.py` | Python script used for conversion |
| `api_users.csv` | Converted CSV dataset |
| `README.md` | Documentation of the API task |

## Result

The public API was successfully called, the JSON response was inspected, and the data was successfully converted into CSV format for analysis.


## Software Architecture Diagram

The diagram below shows the flow of data from a user's action in a web application through the backend and database to an analytics dashboard.

![Software Architecture Diagram](software%20architecture%20diagram.png)
