Team DataMiners
- TEJAS GAJANAN BHITLE, 50468960
- PRASAD SHIRVANDKAR, 50424888
- SHALINI AGARWAL, 50475986


This Zip contains the contents as described below:

1. db_scripts/
    - create.sql            : Contains all DDL queries
    - load.sql              : Contains all DML queries along with the data thats been inserted.
                              Please find the Data insertion details in the report attached.
    - index_creations.sql   : Contains all of the index creations
    - optimized_queries.sql : Contains all SQL queries ran for project requirements


2. data_scraping_and generating_scripts/
    - edaman_rest_call.py       : script that calls the edaman rest api to fetch the data in JSON format.
    - json_parser.py            : script that takes json file generated by 'edaman_rest_call.py' as input and creates insetions queries.
    - mapping_sql_generator.py  : python script that generates insert statements for pivot (mapping) tables .

3. recipe-db-backend
    Backend code for our demo website based on Flask

4. recipe-db-frontend
    React-based frontend code for our website