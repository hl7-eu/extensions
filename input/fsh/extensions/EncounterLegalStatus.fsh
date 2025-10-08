Extension: EncounterLegalStatus
Id:   encounter-legalStatus
Title:  "Encounter: Legal Status"
Description: """Legal status/situation at admission. This extension may be used for representing the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
Context: Encounter
* insert SetFmmandStatusRule ( 1, draft ) // to be changed after the ballot
* ^url = "http://hl7.eu/fhir/StructureDefinition/encounter-legalStatus"

/* _datatype slice */
* extension contains _datatype 1..1 and concept 1..1 and reference 0..1
* extension[_datatype].url = "_datatype" (exactly)
* extension[_datatype].valueString = "CodeableReference" (exactly)

/* concept slice with Binding */
* extension[concept].url = "concept" (exactly)
* extension[concept].valueCodeableConcept 1..1
* extension[concept].valueCodeableConcept from ExampleLegalStatusVS (example)

/* reference slice only Reference(Condition) */
* extension[reference].url = "reference" (exactly)
* extension[reference].valueReference only Reference(Condition)