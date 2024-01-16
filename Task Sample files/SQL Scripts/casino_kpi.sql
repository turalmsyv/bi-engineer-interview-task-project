
--Total Turnover by Provider: Shows the total amount bet for each casino provider, useful for evaluating the popularity and profitability of providers
SELECT [Provider Name], SUM([Turnover]) AS TotalTurnover
FROM [Igaming Project].[dbo].[casino_data]
GROUP BY [Provider Name];

--Monthly Profit Trend: To track the profit trend over months
SELECT [Month], SUM([Profit]) AS MonthlyProfit
FROM [Igaming Project].[dbo].[casino_data]
GROUP BY [Month]
ORDER BY [Month];

--Player Engagement by Game: Understanding which games are most played (in terms of spins) can indicate popularity and engagement
SELECT [Game Name], SUM([Qty  Spin]) AS TotalSpins
FROM [Igaming Project].[dbo].[casino_data]
GROUP BY [Game Name];

--Client Profitability Analysis: Identifies which clients are most profitable.
SELECT [Client], SUM([Profit]) AS TotalProfit
FROM [Igaming Project].[dbo].[casino_data]
GROUP BY [Client];

--Risk Analysis by Game Type: Evaluates which game types may pose higher financial risks based on losses.
SELECT [Game Type Name], SUM(CASE WHEN [Profit] < 0 THEN -[Profit] ELSE 0 END) AS TotalLoss
FROM [Igaming Project].[dbo].[casino_data]
GROUP BY [Game Type Name];

--Gross Gaming Revenue (GGR)
SELECT SUM([Turnover]) AS GrossGamingRevenue
FROM [Igaming Project].[dbo].[casino_data];

--Profitability by Game Type
SELECT [Game Type Name], SUM([Profit]) AS TotalProfitByGameType
FROM [Igaming Project].[dbo].[casino_data]
GROUP BY [Game Type Name];

--Average Bet Size
SELECT AVG([Turnover] / NULLIF([Qty  Spin], 0)) AS AverageBetSize
FROM [Igaming Project].[dbo].[casino_data];
