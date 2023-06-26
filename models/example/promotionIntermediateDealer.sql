SELECT distinct
    id.VIN, 
    id.YEAR, 
    id.MAKE,
    id.STATE, 
    id.MILES, 
    id.DEALER_ID, 
    id.DEALER_NAME 
FROM 
    {{ source('datafeed', 'VW_INDEPENDENT_DEALER_DATAFEED') }} id 