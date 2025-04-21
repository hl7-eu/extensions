Extension: DocumentPresentedForm
Id:   presentedForm
Title:  "Composition: Presented Form"
Description: """Human readable representation of the entire document. Multiple formats are allowed but they SHALL be semantically equivalent."""
Context: Composition
* insert SetFmmandStatusRule ( 1, draft ) // to be changed after the ballot
* ^url = "http://hl7.eu/fhir/StructureDefinition/presentedForm"
* value[x] only Attachment
