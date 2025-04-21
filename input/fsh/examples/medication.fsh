Instance: 04A-FirmagonBranded
InstanceOf: Medication
Title: "Medication: example with extensions."
Description: "Example of Medication resource implementing the MPD extensions documented in this guide."
Usage: #example
* extension[+].url = "http://hl7.eu/fhir/StructureDefinition/medication-package-type"
* extension[=].valueCodeableConcept = $edqm#30009000 "Box"
* identifier.system = "https://www.ravimiregister.ee"
* identifier.value = "1400601"
* totalVolume = 2 $edqm#15060000 "Vial"
* ingredient.item.concept = $sct#441864003 "Degarelix"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 120 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm#15060000 "Vial"
* marketingAuthorizationHolder.display = "Ferring Pharmaceuticals A/S"
