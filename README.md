# BI Analyst Dashboard Project

## Project Overview
This project involves creating a Tableau dashboard using provided sportsbook and casino data. The primary users of this report are the trading team and casino manager, with the goal of mitigating risk and maximizing profit for both the sportsbook and casino.

## Task Description
**Objective:** To develop a comprehensive dashboard that offers insights into the performance of sportsbook and casino operations.

**Data Integration and Manipulation:** Firstly , all data will be clean using pandas library of Python , then will be extracted to MSSQL database for extensive analysis. The sportsbook data will need to be joined with the casino data to maximize its value and provide meaningful insights. BI Tool - Tableau

**Timeline:** The task must be completed and returned within 5 working days of receipt. Feedback will be provided within the next 3 working days.

**Presentation:** If selected to move forward, required to present the dashboard along with key findings and recommendations based on the data analysis.

## Key Performance Indicators (KPIs)
To meet the needs of the trading team and casino manager, the following KPIs have been identified:

## Casino KPI Descriptions
**Total Turnover by Provider**

Description: Measures the total amount bet for each casino provider, highlighting their popularity and profitability.

**Monthly Profit Trend**

Description: Tracks the profit trend over time on a monthly basis, providing insights into performance and seasonal variations.

**Player Engagement by Game**

Description: Analyzes which games are most played in terms of spins, indicating their popularity and player engagement levels.

**Client Profitability Analysis**

Description: Identifies the most profitable clients, helping in understanding customer value and targeting.

**Risk Analysis by Game Type**

Description: Evaluates the financial risk associated with different game types, based on the total losses incurred.

**Gross Gaming Revenue (GGR)**

Description: Represents the total turnover, offering a snapshot of the overall financial performance of the casino.

**Profitability by Game Type**

Description: Analyzes the total profit generated from each game type, aiding in strategic game portfolio management.

**Average Bet Size**

Description: Calculates the average size of bets placed, useful for understanding betting behavior and preferences.


## Sportsbook KPI Descriptions

**Total Bets Placed**

Description: Counts the total number of bets placed, reflecting the overall activity level in the sportsbook.

**Total Stakes and Wins**

Description: Summarizes the total amount staked and the total wins, giving a complete picture of betting volume and returns.

**Average Odds**

Description: Provides the average odds of all bets placed, indicating the general risk profile of the bets.

**Success Rate**

Description: Represents the percentage of bets that were successful, useful for evaluating the performance of bettors.

**Distribution of Bet Types**

Description: Breaks down the different types of bets placed, offering insights into betting patterns and preferences.

**Gross Gaming Revenue**

Description: Calculated as the sum of all stakes minus the sum of all winnings paid out, reflecting the sportsbook's financial health.

**Sportsbook Margin Percentage**

Description: Represents the margin of the sportsbook, calculated as (Total stakes - Total winnings paid out) / Total stakes.

**Profit by Game or Sport Type**

Description: Analyzes the profit made from each type of game or sport, aiding in strategic decision-making.

**User Segmentation by Betting Size**

Description: Segments users based on their average bet size into categories like Low Roller, Medium Roller, and High Roller.
Segmentize users by their roll amount, categorizing them as 'Low Roller' WHEN AVG(STAKE) < 50, and for those with an average stake between 50 and 200, categorize them as 'Medium Roller', else classify them as 'High Roller'

## Data Description

The provided data contains player betting activity across both casino and sportsbook platforms.

### Casino Data
- **Month:** Period of round played
- **ID:** User's ID
- **Provider Name:** Casino provider name
- **Game Name:** Casino game name
- **Game Type Name:** Type of casino game
- **Qty. Spin:** Number of spins played
- **Turnover:** Amount bet
- **Profit:** Profit
- **Client:** Name of sample client

### Sportsbook Data
#### sb_betting_slips
- **ID:** Slip ID (Primary Key)
- **USER_ID:** User's ID
- **TYPE_NAME:** Type of bet type
- **PLACED_TSTAMP:** Time of bet placed
- **STATE_NAME:** Status of bet
- **STAKE:** Amount staked
- **WIN_AMOUNT:** Amount won
- **WIN_AMOUNT_PAID:** Amount won paid
- **ODDS:** Odds of the bet placed
- **CLIENT_NAME:** Name of sample client
- **COMPOSITION:** Composition of the bet

#### sb_betting_slips_selections
- **SLIP_ID:** Slip ID (Primary Key)
- **EVENT_COMPETITOR_1_NAME:** Competitor 1
- **EVENT_COMPETITOR_2_NAME:** Competitor 2
- **EVENT_SPORT_NAME:** Sport name
- **EVENT_LEAGUE_NAME:** League name
- **MARKET_NAME:** Market type
- **EVENT_ID:** Event ID (Foreign Key)

#### sb_events
- **ID:** Event ID (Primary Key)
- **LEAGUE_NAME:** League name
- **ASSOCIATION_NAME:** Association name
- **SPORT_NAME:** Sport name
