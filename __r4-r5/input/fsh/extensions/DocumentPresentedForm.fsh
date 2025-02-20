Extension: DocumentPresentedForm
Id:   presentedForm
Title:  "Document Presented Form"
Description: """Human readable representation of the entire document. Multiple formats are allowed but they SHALL be semantically equivalent."""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^url = "http://hl7.eu/fhir/StructureDefinition/presentedForm"
* value[x] only Attachment
