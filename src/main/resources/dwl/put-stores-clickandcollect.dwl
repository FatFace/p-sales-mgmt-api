%dw 2.0
output application/json
---
{
 "stores": [
   {
     "store-id": attributes.uriParams."store-id",
     "name": "",
     "store-address": {
       "street": "",
       "city": "",
       "postal-code": "",
       "state": "",
       "country-code": "",
       "phone": ""
     },
     "latitude": "",
     "longitude": "",
     "disableOnCheckout": upper(payload."click-collect"),
     "fulfillFromStore": "",
     "openingTimingsMonday": "",
     "openingTimingTuesday": "",
     "openingTimingWednesday": "",
     "openingTimingThursday": "",
     "openingTimingFriday": "",
     "openingTimingSaturday": "",
     "openingTimingSunday": ""
   }
 ]
}