USE [Test]
GO
/* Question 2: Select SUM (total_price_paid)/7 From [dbo].[Subscription] */

/*(Select COUNT (customer_id) From [dbo].[Customer])*/

/*Question 3*/

/*Select AVG(total_price_paid), start_data From [dbo].[Subscription] 
Where start_data = '01/01/2018' OR '01/01/2019' /*And end_date BETWEEN 2018/05/30 And 2018/12/31*/
Group By start_data*/
 
/*CREATE PROCEDURE AvgTotalPricePaid @startdate date
AS
SELECT AVG(total_price_paid), start_data FROM [dbo].[Subscription] WHERE start_data = @startdate Group By start_data
GO

EXEC AvgTotalPricePaid @startdate = '01/01/2018'
EXEC AvgTotalPricePaid @startdate = '01/01/2019'*/

/*Select COUNT([dbo].[Subscription].subs_id) AS TotalSubs, [dbo].[Customer].age_band
From [dbo].[Subscription]
RIGHT JOIN [dbo].[Customer] ON [dbo].[Subscription].customer_id = [dbo].[Customer].customer_id
GROUP BY [dbo].[Customer].age_band
ORDER BY [dbo].[Customer].age_band */


-- Q5
/* Select COUNT ([dbo].[Subscription].mag_code) AS CustomerPerMagazine, [dbo].[Subscription].mag_code, [dbo].[Magazine].brand
From [dbo].[Subscription]
RIGHT JOIN [dbo].[Magazine] ON [dbo].[Subscription].mag_code = [dbo].[Magazine].mag_code
GROUP BY [dbo].[Magazine].brand, [dbo].[Subscription].mag_code
ORDER BY [dbo].[Subscription].mag_code DESC */


Q6
Select SUM([dbo].[Subscription].total_price_paid) AS CustomerValue, [dbo].[Subscription].customer_id, [dbo].[Subscription].start_data
From [dbo].[Subscription]
WHERE start_data IN ('01/01/2018', '01/01/2019')
GROUP BY [dbo].[Subscription].customer_id, [dbo].[Subscription].start_data
ORDER BY CustomerValue DESC

--[dbo].[Subscription].customer_id DESC

Q7

Select AVG([dbo].[Subscription].subs_id) AS AVGSubs, [dbo].[Subscription].customer_id
From [dbo].[Subscription]
Group BY [dbo].[Subscription].customer_id
ORDER BY AVGSubs DESC



Q8

Select SUM([dbo].[Subscription].total_price_paid) AS MagazineValue, [dbo].[Subscription].mag_code, [dbo].[Magazine].brand, [dbo].[Subscription].start_data
From [dbo].[Subscription]
RIGHT JOIN [dbo].[Magazine] ON [dbo].[Subscription].mag_code = [dbo].[Magazine].mag_code
WHERE [dbo].[Subscription].start_data IN ('01/01/2018', '01/01/2019')
GROUP BY [dbo].[Magazine].brand,[dbo].[Subscription].mag_code, [dbo].[Subscription].start_data
ORDER BY MagazineValue DESC

Q9

Select [dbo].[Magazine].category, [dbo].[Customer].age_band
From [dbo].[Subscription]
RIGHT JOIN [dbo].[Customer] ON [dbo].[Subscription].customer_id = [dbo].[Customer].customer_id
RIGHT JOIN [dbo].[Magazine] ON [dbo].[Subscription].mag_code = [dbo].[Magazine].mag_code
WHERE [dbo].[Customer].age_band = '35-44'
GROUP BY [dbo].[Magazine].category, [dbo].[Customer].age_band


Q10

Select SUM([dbo].[Subscription].end_issue - [dbo].[Subscription].start_issue) AS TotalIssue, [dbo].[Subscription].mag_code, [dbo].[Magazine].brand 
From [dbo].[Subscription]
RIGHT JOIN [dbo].[Magazine] ON [dbo].[Subscription].mag_code = [dbo].[Magazine].mag_code
WHERE[dbo].[Subscription].mag_code = 'RT'
GROUP BY [dbo].[Subscription].mag_code, [dbo].[Magazine].brand 