# ETL-US_AIRPORT_RANK_2016

EXTRACT:
    Searching Kaggle, I found some airport .csv data that contained city, state, latitude, longitude, and airport codes for airports located in the United States. I also located .csv data for busiest world aiports. I thought I could join the data to give the rank of U.S. airports in 2016, as well as lat and long data that could possibly be used to locate the nearest Chipotle.

TRANSFORM:
    I inially did some formatting of column headers for the world airport data in excel. I filtered down to the 2016 year, and renamed columns so that they did nor interfere with table creation in Pgadmin. 

    Then I cleaned the data using python and pandas:
        1. define a fuction to check a db for null values since sql tables defined the fields as 'not null'
        2. remove null values if present
        3. extracted the columns I wanted to keep for both db
        4. formatted headers in domestic airport data .csv to lowercase
        5. formatted a located header issue in the world db (total passengers column)
        6. filtering the world data to include the United States rankings only. 

LOAD:
    I had previously created a db for flights (as I was going to do something different with the domestinc airport csv) and 
    created tables for fields I intended to merge. I used SQLalchemy to create a connection to the SQL db, and load the cleaned airport and ranking data into their respective tables.

    Once it was verified (through both python and select *), I joined the two tables using WHERE iata_codes were equal.

    Now we can view the rankings of U.S. airports by traffic in 2016.