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
     "availableForCC": upper(payload."click-and-collect"),
     "disableOnCheckout": upper(payload."click-and-collect"),
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