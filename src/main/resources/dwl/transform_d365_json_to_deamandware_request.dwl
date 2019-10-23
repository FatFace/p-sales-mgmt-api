%dw 2.0
output application/json
---
{
	stores: payload.stores map (value)->{
		"store-id" : value."store-id",
		"name" : value.name,
		"store-address":{
			street : value."store-address".street,
			city: value."store-address".city,
			"postal-code" : value."store-address".postcode,
			state : value."store-address".state,
			"country-code" : value."store-address".county,
			country : value."store-address".country,
			phone : value."store-address"."contact-number"
			
			},
		latitude : value.latitude,
		langitude : value.longitude,
		"click-and-collect" : value."click-and-collect",
		"store-fulfillment" : value."store-fulfillment",
		"openingTimingsMonday" : value."monday-open-time" ++ " - " ++ value."monday-close-time",
		"openingTimingTuesday" : value."tuesday-open-time" ++ " - " ++ value."tuesday-close-time",
		"openingTimingWednesday" : value."wednseday-open-time" ++ " - "	++ value."wednseday-close-time",
		"openingTimingThursday" : value."thursday-open-time" ++ " - " ++ value."thursday-close-time",
		"openingTimingFriday" : value."friday-open-time" ++ " - " ++ value."friday-close-time",
		"openingTimingSaturday" : value."saturday-open-time" ++ " - " ++ value."saturday-close-time",
		"openingTimingSunday" : value."sunday-open-time" ++ " - " ++ value."sunday-close-time"	
		}
}