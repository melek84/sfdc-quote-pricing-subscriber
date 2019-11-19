%dw 2.0
output application/json
---
{
	"success":false,
	"alertSent":p('email.failure.alert.enabled') default true,
	"transactionProperties":vars.transactionProperties,
	"error":write(error, "application/java"),
	"originalPayload":vars.originalPayload,
	(if(vars.failedPayload?) "failedPayload":vars.failedPayload else {})
}