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

1. **Gross Gaming Revenue (GGR):** This is the big picture. GGR shows us how much money our sportsbook and casino are bringing in. It's like looking at the total earnings to understand how well we're doing financially.

2. **Customer Acquisition Cost (CAC):** Think of CAC as the price tag for getting new customers. It helps us budget and figure out if our marketing efforts are costing too much or if they're a smart investment.

3. **Customer Lifetime Value (CLV):** CLV predicts how valuable each customer will be in the long run. It's like knowing which customers are our VIPs, so we can treat them well and keep them around.

4. **Churn Rate:** Churn rate is like a leaky bucket. It shows us how many customers we're losing. Lower churn means we're doing a great job keeping customers happy, which is good for business.

5. **Average Bet Size:** This tells us how much people are betting on our platform. It's like understanding the size of bets at a poker table, helping us tailor our offerings to what players like.

6. **Return on Investment (ROI):** ROI is our profit report card. It tells us if our marketing campaigns are making us money or not. It guides us in spending money wisely.

7. **Sportsbook Margin:** Sportsbook margin is about managing risks and making smart bets. It's like knowing the odds in a game of roulette to maximize our profits.

8. **Casino Payout Percentage:** This is all about fairness and profit. It shows us how much we pay out in winnings. Balancing it means players have fun, and we make money.

9. **Customer Segmentation:** Imagine dividing our customers into groups based on their likes and dislikes. It helps us offer the right games and bonuses to the right people, keeping them happy.

10. **Profitability by Game Type:** This one helps us see which games or types of bets make us the most money. It's like knowing which menu items are the most popular at a restaurant, so we can focus on those.

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
