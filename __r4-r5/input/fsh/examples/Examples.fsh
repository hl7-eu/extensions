Instance: comp-example
InstanceOf: Composition
Title: "Composition: example with InformationRecipient and CompositionBasedOnOrderOrRequisition extensions"
Description: """Composition: example with InformationRecipient and CompositionBasedOnOrderOrRequisition extensions."""
Usage: #example
* extension[CompositionBasedOnOrderOrRequisition].valueIdentifier
  * system = "urn:oid:1.999.999.999"
  * value = "document-order-1"
* extension[InformationRecipient].valueReference
  * display = "MUDr. Aleš Procházka"
* identifier
  * system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* subject.display = "Nice Patient"
* date = "2022-10-25T14:30:00+01:00"
* author[+].display = "MUDr. Aleš Procházka"
* title = "Laboratory Report Test"
[r4-init]
* confidentiality = #N
[r4-end]
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party.display = "Best Laboratory"
* custodian.display = "Best Laboratory"
