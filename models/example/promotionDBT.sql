
-- USE ROLE SYSADMIN;

-- make the name of the model to be tbl_promotion. The database and schema are already defined. The name of the model is the name of the destination
-- Create or replace table MKTG_DB.REFINED.tbl_Promotion as  

-- select 
--          P.*

-- from (
-- SELECT distinct
--     id.VIN, 
--     id.YEAR, 
--     id.MAKE,
--     r.CONVERSIONTYPE, 
--     id.STATE, 
--     id.MILES, 
--     id.DEALER_ID, 
--     id.DEALER_NAME 
-- FROM 
--     MKTG_DB.REFINED.VW_INDEPENDENT_DEALER_DATAFEED id 
-- INNER JOIN 
--     NAM_DB.REFINED.VW_RECEIVING_CUSTOM r 
-- ON 
--     ( 
--         id.VIN = r.VINUD)
-- where (upper(id.make) = 'HONDA') 
-- ) p ;

SELECT distinct
    id.*,
    r.*
FROM 
    {{ ref('promotionIntermediateDealer') }} id 
INNER JOIN 
    {{ ref('promotionIntermediateReceiving')}} r 
    -- use source like above to add it to source.yml
ON 
    ( 
        id.VIN = r.VINUD)
where (upper(id.make) = 'HONDA') 


-- USE ROLE ACCOUNTADMIN;
-- GRANT SELECT ON VIEW "MKTG_DB"."REFINED"."TBL_PROMOTION" TO SHARE "DEALERTEAM_INVENTORY";

-- This is un-needed, only needed to be run once