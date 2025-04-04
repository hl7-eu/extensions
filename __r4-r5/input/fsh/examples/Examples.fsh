Instance: comp-example
InstanceOf: Composition
Title: "Composition: example with extensions"
Description: """Example of COmposition with InformationRecipient and CompositionBasedOnOrderOrRequisition extensions."""
Usage: #example
* extension[CompositionBasedOnOrderOrRequisition].valueIdentifier
  * system = "urn:oid:1.999.999.999"
  * value = "document-order-1"
* extension[InformationRecipient].valueReference
  * display = "MUDr. Aleš Procházka"
* extension[DocumentPresentedForm].valueAttachment
  * contentType = #application/pdf
  * url = "http://example.org/attachment.pdf"
  * title = "Attachment.pdf"
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
* attester[+].mode = #legal
[r4-end]

[r5-init]
* attester[+].mode = http://hl7.org/fhir/composition-attestation-mode#legal "Legal"
[r5-end]

* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party.display = "Best Laboratory"
* custodian.display = "Best Laboratory"


Instance: enc-example
InstanceOf: Encounter
Title: "Encounter: example with extensions."
Description: """Example of Encounter with legal status."""
Usage: #example

* extension[EncounterLegalStatus].valueCodeableConcept = $sct#135848002 "Voluntary admission"
* subject.display = "Nice Patient"

[r4-init]
* status = #finished
[r4-end]

[r5-init]
* status = #completed 
[r5-end]

* class = $v3-ActCode#IMP


Instance: consent-example
InstanceOf: Consent
Title: "Consent: example with extensions"
Description: """Example of Consent with related condition."""
Usage: #example

* contained[+] = condition-example
* extension[ConsentRelatedCondition].valueReference = Reference (condition-example)
* status = #active
[r4-init]
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment "Treatment"
[r4-end]
* category = $loinc#59284-0 	"Consent Document"
[r4-init]
* policyRule = http://terminology.hl7.org/CodeSystem/consentpolicycodes#cric "Common Rule Informed Consent"
[r4-end]

Instance: condition-example
InstanceOf: Condition
Title: "Condition: example"
Description: """Condition: example."""
Usage: #inline

* code = $sct#431855005 "Chronic kidney disease stage 1"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* subject.display = "Nice Patient"