BI Analyst Dashboard Project
Project Overview
This project involves creating a Tableau dashboard using provided sportsbook and casino data. The primary users of this report are the trading team and casino manager, with the goal of mitigating risk and maximizing profit for both the sportsbook and casino.

Task Description
Objective: To develop a comprehensive dashboard that offers insights into the performance of sportsbook and casino operations.
Data Integration: The sportsbook data will need to be joined with the casino data to maximize its value and provide meaningful insights.
Timeline: The task must be completed and returned within 5 working days of receipt. Feedback will be provided within the next 3 working days.
Presentation: If selected to move forward, you will be required to present the dashboard along with key findings and recommendations based on the data analysis.
Data Description
The provided data contains player betting activity across both casino and sportsbook platforms.

Casino Data
Month: Period of round played
ID: User's ID
Provider Name: Casino provider name
Game Name: Casino game name
Game Type Name: Type of casino game
Qty. Spin: Number of spins played
Turnover: Amount bet
Profit: Profit
Client: Name of sample client
Sportsbook Data
sb_betting_slips
ID: Slip ID (Primary Key)
USER_ID: User's ID
TYPE_NAME: Type of bet type
PLACED_TSTAMP: Time of bet placed
STATE_NAME: Status of bet
STAKE: Amount staked
WIN_AMOUNT: Amount won
WIN_AMOUNT_PAID: Amount won paid
ODDS: Odds of the bet placed
CLIENT_NAME: Name of sample client
COMPOSITION: Composition of the bet
sb_betting_slips_selections
SLIP_ID: Slip ID (Primary Key)
EVENT_COMPETITOR_1_NAME: Competitor 1
EVENT_COMPETITOR_2_NAME: Competitor 2
EVENT_SPORT_NAME: Sport name
EVENT_LEAGUE_NAME: League name
MARKET_NAME: Market type
EVENT_ID: Event ID (Foreign Key)
sb_events
ID: Event ID (Primary Key)
LEAGUE_NAME: League name
ASSOCIATION_NAME: Association name
SPORT_NAME: Sport name