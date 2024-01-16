SELECT 
    bs.ID,
    bs.USER_ID,
    bs.TYPE_NAME,
    bs.PLACED_TSTAMP,
    bs.STATE_NAME,
    bs.STAKE,
    bs.WIN_AMOUNT,
    bs.WIN_AMOUNT_PAID,
    bs.ODDS,
    bs.CLIENT_NAME,
    bs.COMPOSITION,
    bss.EVENT_COMPETITOR_1_NAME,
    bss.EVENT_COMPETITOR_2_NAME,
    bss.EVENT_SPORT_NAME,
    bss.EVENT_LEAGUE_NAME as SELECTION_EVENT_LEAGUE_NAME,  -- Renamed for clarity
    bss.MARKET_NAME,
    bss.EVENT_ID,
    e.LEAGUE_NAME as EVENT_LEAGUE_NAME,                     -- Kept the original name
    e.ASSOCIATION_NAME,
    e.SPORT_NAME
INTO 
    [dbo].[sportsbook_combined]
FROM 
    [dbo].[sb_betting_slips] bs
FULL JOIN 
    [dbo].[sb_betting_slips_selections] bss ON bs.ID = bss.SLIP_ID
FULL JOIN 
    [dbo].[sb_events] e ON bss.EVENT_ID = e.ID;


