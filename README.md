# SQL Window Functions & Data Analysis on AWS

This project demonstrates advanced SQL querying techniques performed within an AWS cloud environment. Using a MariaDB instance hosted on EC2, I analyzed global population data using window functions to generate insights that standard aggregations cannot easily provide.

## Tech Stack
- **Cloud:** Amazon Web Services (AWS)
- **Compute:** EC2 (Command Host via Systems Manager)
- **Database:** MariaDB / MySQL
- **Dataset:** World Database (City, Country, CountryLanguage)

## Key Queries & Logic

### 1. Data Aggregation with GROUP BY
Used to calculate the total population of specific regions to understand the overall scale of data.
```sql
SELECT Region, SUM(Population) 
FROM world.country 
WHERE Region = 'Australia and New Zealand' 
GROUP By Region;
