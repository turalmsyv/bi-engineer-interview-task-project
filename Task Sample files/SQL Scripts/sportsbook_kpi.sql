--Count of total bets placed
SELECT COUNT(ID) AS TotalBetsPlaced
FROM [sportsbook_combined];

--Sum of all stakes and wins to understand the overall betting volume and returns
SELECT 
    SUM(STAKE) AS TotalStakes,
    SUM(WIN_AMOUNT) AS TotalWins
FROM [sportsbook_combined];

--Average odds of all bets placed. This gives an idea of the risk profile
SELECT AVG(ODDS) AS AverageOdds
FROM [sportsbook_combined];

--Percentage of bets that were successful.
SELECT
    (COUNT(ID) * 100.0 / (SELECT COUNT(ID) FROM [sportsbook_combined])) AS SuccessRate
FROM [sportsbook_combined]
WHERE WIN_AMOUNT > 0;


--Distribution of different types of bets.
SELECT TYPE_NAME, COUNT(ID) AS BetCount
FROM [sportsbook_combined]
WHERE TYPE_NAME IS NOT NULL
GROUP BY TYPE_NAME;

--Sum of all stakes minus the sum of all winnings paid out.
SELECT SUM(STAKE) - SUM(WIN_AMOUNT_PAID) AS GrossGamingRevenue
FROM [sportsbook_combined];

--(Total stakes - Total winnings paid out) / Total stakes
SELECT (SUM(STAKE) - SUM(WIN_AMOUNT_PAID)) / SUM(STAKE) * 100 AS SportsbookMarginPercentage
FROM [sportsbook_combined];

--Profit made from each type of game or sport.
SELECT SPORT_NAME, COALESCE(SUM(STAKE) - SUM(WIN_AMOUNT_PAID), 0) AS Profit
FROM [sportsbook_combined]
GROUP BY SPORT_NAME;

--Segmentize users by their roll amount     WHEN AVG(STAKE) < 50 THEN 'Low Roller'
            --WHEN AVG(STAKE) BETWEEN 50 AND 200 THEN 'Medium Roller'
           -- ELSE 'High Roller'
SELECT 
    CustomerSegment,
    COUNT(*) AS NumberOfUsers
FROM 
    (SELECT 
        USER_ID, 
        AVG(STAKE) AS AverageBetSize,
        CASE 
            WHEN AVG(STAKE) < 50 THEN 'Low Roller'
            WHEN AVG(STAKE) BETWEEN 50 AND 200 THEN 'Medium Roller'
            ELSE 'High Roller'
        END AS CustomerSegment
     FROM [sportsbook_combined]
     GROUP BY USER_ID
    ) AS UserSegments
GROUP BY CustomerSegment;

