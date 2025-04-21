// Extension: MedicationDevice - separate for R4 and R5 due to CodeableReference
// StrengthSubstance separate for R4 and R5 due to strength[x] element
// StrengthType separate for R4 and R5 due to strength[x] element
Extension: MedicationPackageType
Id: medication-package-type
Title: "Medication: Package type"
Description: "This extension applies to Medication and expresses the type of the container for the product (e.g. bottle, unit-dose blister, pre-filled pen)."
Context: Medication
* ^url = "http://hl7.eu/fhir/StructureDefinition/medication-package-type"
* value[x] only CodeableConcept
* valueCodeableConcept from $eHDSIPackage (example)	
* valueCodeableConcept ^short = "Type of container, e.g pre-filled syringe, unit-dose blister, sachet, etc."
