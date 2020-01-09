%dw 2.0
output application/json
fun returnCountryCode(countryCode) = (vars.vDBLookupCountryCodes.lookups filter ($."lookup-key" ==  countryCode as String))."lookup-value"[0]
---
{
	stores: payload.stores map {
		"store-id" : $."store-id",
		"name" : $.name,
		"store-address": {
			street : $."store-address".street,
			city: $."store-address".city,
			"postal-code" : $."store-address".postcode,
			state : $."store-address".state,
			"country-code" : returnCountryCode($."store-address".country),
			phone : $."store-address"."contact-number"
		},
		latitude : $.latitude,
		longitude : $.longitude,
		"disableOnCheckout" : upper($."click-and-collect"),
		"fulfillFromStore" : upper($."fulfill-from-store"),
		"openingTimingsMonday" : $."monday-open-time" ++ " - " ++ $."monday-close-time",
		"openingTimingTuesday" : $."tuesday-open-time" ++ " - " ++ $."tuesday-close-time",
		"openingTimingWednesday" : $."wednesday-open-time" ++ " - " ++ $."wednesday-close-time",
		"openingTimingThursday" : $."thursday-open-time" ++ " - " ++ $."thursday-close-time",
		"openingTimingFriday" : $."friday-open-time" ++ " - " ++ $."friday-close-time",
		"openingTimingSaturday" : $."saturday-open-time" ++ " - " ++ $."saturday-close-time",
		"openingTimingSunday" : $."sunday-open-time" ++ " - " ++ $."sunday-close-time"
	}
}
