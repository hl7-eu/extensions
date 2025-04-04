Extension: ConsentRelatedCondition
Id:   consent-relatedCondition
Title:  "Consent: Related Condition"
Description: """The problem or disorder to which the living will applies."""
Context: Consent

* insert SetFmmandStatusRule ( 2, trial-use )
* ^url = "http://hl7.eu/fhir/StructureDefinition/consent-relatedCondition"
* value[x] only Reference(Condition)
