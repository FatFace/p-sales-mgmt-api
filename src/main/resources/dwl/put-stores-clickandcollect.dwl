%dw 2.0
output application/json
---
{
stores: {
"store-id" : payload."store-id",
"name" : "",
"store-address":{
street : "",
city: "",
"postal-code" : "",
state : "",
"country-code" : "",
phone : ""

},
"latitude" : "",
"longitude" : "",
"disableOnCheckout" : payload."click-and-collect",
       "fulfillFromStore" : "",
"openingTimingsMonday" : "",
"openingTimingTuesday" : "",
"openingTimingWednesday" : "",
"openingTimingThursday" : "",
"openingTimingFriday" : "",
"openingTimingSaturday" : "",
"openingTimingSunday" : ""
}

}