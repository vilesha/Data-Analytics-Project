# Data-Analytics-Project
This project showcases: 
Excel Skills
SQL skills
Data Visuaisation in Tableau with findings and summary

Data Project 3 

Victoria Robinson Github page where my data has been published. 

Original WHO dataset - ​​
Improved WHO dataset - I used the above dataset instead of the one provided as it was a ‘cleaner’ set of data with less missing data such as population and GNI.

I also looked at UK data to get further insight on income and life expectancy. Although not included in the project, this helped me with my hypothesis that income/wealth does contribute to the life expectancy of a person. 
UK data on economy
UK Life Expectancy

THE GOAL
Develop a database to analyse and visualise Life Expectancy Data.

Initial Hypothesis:
I’m looking for any correlation between the wealth of a country and the investment made into healthcare.
I also want to see how disease control and access to clean water can affect life expectancy for a country.

Excel Cleaning Data Process
Use v look up to find all "0" and remove
Remove all spaces

Notes on changes made
Deleted columns with little data in it. 
I used the data imputation method for the missing data for the population. I couldn’t average them because it would disrupt the correlation of population growth each year so I found the difference between each year and calculated the average of that difference before subtracting it from the previous year where there was data. 
e.g. Brazil missing population, I found the difference between the population growth each year (from 2005 - 2001) avg the difference each year which was 2232.76, then minus that from the previous year to fill the missing data.
This method was repeated for Gross National Income (GNI).
Singapore population missing so found data on the World Bank website, https://data.worldbank.org/indicator/SP.POP.TOTL?locations=SG.

SQL
This helped me understand my data more. 

I looked at the top 10 countries with the highest life expectancy and the bottom 10 countries with the lowest life expectancy in the year 2010 and 2015. I was able to see which countries were still in the list, and could see Haiti was the lowest for one year. From further research I discovered that the earthquake that killed more than 222000 was in 2010, which means the data has outside influences from what is captured in this dataset that affects life expectancy. 

Once I wrote code to find the average Life Expectancy for the top 10 countries over the span of years, Haiti was no longer in the bottom 10 list and I had a new dataset of countries.  

I used CASE IF to create a new table to identify countries with a “High Life Expectancy” or a “Low Life Expectancy” and I used subqueries to include the average life expectancy.
I was also able to identify the average life expectancy by Region.

Tableau Analysis and Trends
Globally there is an increase in population, GNI, access to basic water, immunisation against measles, polio and alcohol consumption and infant mortality is on the decrease, which explains why life expectancy is on the rise. 

My hypothesis that wealth in a contributing factor to increased life expectancy can be interpreted as correct, however it is also more nuanced than that. 

Once we breakdown countries but the top 10 Life Expectancy and the Bottom 10 Life Expectancy, there is a big wealth divide between these cohorts, the bottom 10 being significantly less wealthy,  but when you get into the detail the richest country does not have the highest life expectancy, and the poorest country does not have the lowest life expectancy.

The lower life expectancy countries have significantly lower immunisations, access to clean water and higher infant mortality. I would argue that investing in these areas could lead to higher life expectancy. A trend does show however that each year this improves, and life expectancy is increasing, however the gap between the high income, and low income countries is still large (30yrs in some cases). 

With a foundation of high immunisations, and higher spending on healthcare for the top 10 life expectancy countries, I would argue that it shifts from life expectancy to a discussion about longevity. The richest country (Japan) with the highest immunisation (Israel) doesn't have the highest life expectancy. I would argue this data doesn’t capture what causes a population to live longer, and that question could be answered by the Blue Zones Dataset which focuses on the highest number of people that live to 100 across the world, and the patterns across those countries that cause people to live longer. From this dataset it identifies lifestyle choices, and diet, which contribute to longevity, Japan again having the highest number of centurions.    
