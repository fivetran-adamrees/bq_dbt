SELECT distinct
    r.CONVERSIONTYPE, 

FROM 
    {{ source('receiving', 'VW_RECEIVING_CUSTOM') }} r 