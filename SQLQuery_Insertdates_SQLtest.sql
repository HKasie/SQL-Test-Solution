USE [Test]
GO
INSERT INTO [dbo].[Subscription] VALUES
(1, 'RT', 1, (CONVERT(date, '01/01/2018', 105)), (CONVERT(date, '31/12/2018', 105)), 37, 89, 65),
(2, 'RT', 2, (CONVERT(date, '01/01/2019', 105)), (CONVERT(date, '30/05/2019', 105)), 54, 80, 165),
(3, 'GW', 2, (CONVERT(date, '01/01/2018', 105)), (CONVERT(date, '31/12/2018', 105)), 45, 57, 140),
(4, 'GF', 3, (CONVERT(date, '01/01/2019', 105)), (CONVERT(date, '30/05/2019', 105)), 50, 56, 75),
(5, 'GF', 4, (CONVERT(date, '01/01/2018', 105)), (CONVERT(date, '30/03/2019', 105)), 30, 50, 150),
(6, 'RT', 4, (CONVERT(date, '01/01/2018', 105)), (CONVERT(date, '31/12/2018', 105)), 37, 89, 75),
(7, 'GW', 4, (CONVERT(date, '01/01/2018', 105)), (CONVERT(date, '30/05/2018', 105)), 53, 59, 80),
(8, 'HE', 5, (CONVERT(date, '01/01/2019', 105)), (CONVERT(date, '30/05/2019', 105)), 21, 27, 150),
(9, 'HE', 6, (CONVERT(date, '01/01/2019', 105)), (CONVERT(date, '30/05/2019', 105)), 21, 27, 150),
(10,'OM', 7, (CONVERT(date, '01/01/2019', 105)), (CONVERT(date, '30/05/2019', 105)), 20, 26, 100)