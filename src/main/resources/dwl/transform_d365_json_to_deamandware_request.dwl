%dw 2.0
output application/json
---
{
	stores: payload.stores map {
		"store-id" : $."store-id",
		"name" : $.name,
		"store-address":{
			street : $."store-address".street,
			city: $."store-address".city,
			"post-code" : $."store-address".postcode,
			state : $."store-address".state,
			"country-code" : $."store-address".county,
			country : $."store-address".country,
			phone : $."store-address"."contact-number"
			
			},
		latitude : $.latitude,
		langitude : $.longitude,
		"disableOnCheckout" : $."click-and-collect",
        "fulfillFromStore" : $."fulfill-from-store",
		"openingTimingsMonday" : $."monday-open-time" ++ " - " ++ $."monday-close-time",
		"openingTimingTuesday" : $."tuesday-open-time" ++ " - " ++ $."tuesday-close-time",
		"openingTimingWednesday" : $."wednesday-open-time" ++ " - "	++ $."wednesday-close-time",
		"openingTimingThursday" : $."thursday-open-time" ++ " - " ++ $."thursday-close-time",
		"openingTimingFriday" : $."friday-open-time" ++ " - " ++ $."friday-close-time",
		"openingTimingSaturday" : $."saturday-open-time" ++ " - " ++ $."saturday-close-time",
		"openingTimingSunday" : $."sunday-open-time" ++ " - " ++ $."sunday-close-time"	
		}
		
}