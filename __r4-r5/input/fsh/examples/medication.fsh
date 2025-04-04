Instance: 04A-FirmagonBranded
InstanceOf: Medication
Title: "Medication: example with extensions."
Description: "Example of Medication resource implementing the MPD extensions documented in this guide."
Usage: #example

[r4-init]
* extension[0].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification"
* extension[=].valueCodeableConcept = $atc#L02BX02 "degarelix"
* extension[+].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname"
* extension[=].valueString = "FIRMAGON"
* extension[+].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem"
* extension[=].valueQuantity = 3 'mL' "milliliter"
* extension[+].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation"
* extension[=].valueCodeableConcept = $edqm#15060000 "Vial"
[r4-end]

* extension[+].url = "http://hl7.eu/fhir/StructureDefinition/medication-package-type"
* extension[=].valueCodeableConcept = $edqm#30009000 "Box"

[r4-init]
* extension[+].extension[0].url = "device"
* extension[=].extension[=].valueCodeableConcept = $edqm#30051000 "Pre-filled syringe"
* extension[=].extension[+].url = "quantity"
* extension[=].extension[=].valueQuantity.value = 2
* extension[=].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
* extension[+].extension[0].url = "type"
* extension[=].extension[=].valueCodeableConcept = $medicationknowledge-characteristic#color "Color"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueCodeableConcept = $sct#371251000 "White"
* extension[=].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic"
* extension[+].extension[0].url = "device"
* extension[=].extension[=].valueCodeableConcept = $edqm#30028000 "Injection needle"
* extension[=].extension[+].url = "quantity"
* extension[=].extension[=].valueQuantity.value = 2
* extension[=].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
[r4-end]

* identifier.system = "https://www.ravimiregister.ee"
* identifier.value = "1400601"

[r4-init]
* manufacturer.display = "Ferring Pharmaceuticals A/S"
* form = $edqm#11207000 "Powder and solvent for solution for injection"
* amount.numerator = 2 http://standardterms.edqm.eu#15060000 "Vial"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $sct#441864003 "Degarelix"
* ingredient.isActive = true
* ingredient.strength.extension.url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance"
* ingredient.strength.extension.valueCodeableConcept = $sct#441864003 "Degarelix"
* ingredient.strength.numerator = 120 'mg' "milligram"
* ingredient.strength.denominator = 1 http://standardterms.edqm.eu#15060000 "Vial"
[r4-end]


[r5-init]
* totalVolume = 2 $edqm#15060000 "Vial"
* ingredient.item.concept = $sct#441864003 "Degarelix"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 120 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm#15060000 "Vial"
* marketingAuthorizationHolder.display = "Ferring Pharmaceuticals A/S"
[r5-end]