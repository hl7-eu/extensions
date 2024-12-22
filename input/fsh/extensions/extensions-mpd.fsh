// Extension: MedicationDevice - separate for R4 and R5 due to CodeableReference
// StrengthSubstance separate for R4 and R5 due to strength[x] element
// StrengthType separate for R4 and R5 due to strength[x] element
Extension: PrescribedQuantity
Id: prescribed-quantity
Title: "Overall prescribed quantity"
Description: "This extension applies to the MedicationRequest resource for marking the overall prescribed quantity (e.g. number of packages)."
Context: MedicationRequest.dispenseRequest
* ^url = "http://hl7.eu/fhir/StructureDefinition/prescribed-quantity"
* value[x] only Quantity	
