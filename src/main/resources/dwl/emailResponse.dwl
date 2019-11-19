%dw 2.0
output application/json
---
{
	"success":true,
	"successAlertSent":p('email.success.alert.enabled') default false,
	"transactionProperties":vars.transactionProperties,
	"originalPayload":vars.originalPayload,
	"responsePayload" : vars.upsertresponse
}