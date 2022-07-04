USE [Test]
GO
INSERT INTO [dbo].[Calendar] VALUES
((CONVERT(date, '01/01/2017', 105)), 2017, 1, 1),
((CONVERT(date, '01/01/2018', 105)), 2018, 1, 1 ),
((CONVERT(date, '03/01/2018', 105)), 2018, 1, 3 ),
((CONVERT(date, '01/01/2019', 105)), 2019, 1, 1 ),
((CONVERT(date, '03/01/2019', 105)), 2019, 1, 3 ),
((CONVERT(date, '01/03/2019', 105)), 2019, 3, 1 )

