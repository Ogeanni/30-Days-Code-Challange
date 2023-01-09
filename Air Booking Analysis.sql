CREATE DATABASE projects;
USE projects;

SELECT 
    *
FROM
    customertravel;


# Average age of customers base on income class
SELECT 
    annualincomeclass, ROUND(AVG(age)) AS avg_age
FROM
    customertravel
GROUP BY annualincomeclass;



# Count of regular flyers base on income class
SELECT 
    annualincomeclass,
    COUNT(frequentflyer) AS count_of_regular_flyers
FROM
    customertravel
WHERE
    frequentflyer = 'Yes'
GROUP BY annualincomeclass;



# How many frequent income class customers book hotel through the company
SELECT 
    annualincomeclass,
    COUNT(frequentflyer) AS count_of_regular_flyers
FROM
    customertravel
WHERE
    frequentflyer = 'Yes'
        AND bookedhotelornot = 'Yes'
GROUP BY annualincomeclass;



# Number of customers that have their account synced to social media
SELECT 
    accountsyncedtosocialmedia, COUNT(age) AS count_of_customers
FROM
    customertravel
GROUP BY accountsyncedtosocialmedia;