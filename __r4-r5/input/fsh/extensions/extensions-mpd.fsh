// Extension: MedicationDevice - separate for R4 and R5 due to CodeableReference
// StrengthSubstance separate for R4 and R5 due to strength[x] element
// StrengthType separate for R4 and R5 due to strength[x] element
[r4-init]
Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication: Device"
Description: "Device, typically an administration device, included in the medicinal product."
Context: Medication
// Extension on Medication
* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
* extension contains
    device 1..1 and
    quantity 0..1
* extension[device].value[x] only CodeableConcept or Reference(Device or DeviceDefinition)
//* extension[device].valueCodeableConcept from $eHDSIPackage (example)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in the package"

Extension: MedicationStrengthSubstance
Id: ihe-ext-medication-strengthsubstance
Title: "Medication: Strength substance"
Description: "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength)."
Context: Medication.ingredient.strength
* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $substanceSCT (example)


Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication: Classification"
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.."

* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept 
* valueCodeableConcept from $atcVS (example)


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication: Product Name"
Description: "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts."

* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only string
* valueString 1..1


Extension: MedicationSizeOfItem
Id:        ihe-ext-medication-sizeofitem
Title:     "Medication: Size of Item"
Description: "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
Context: Medication

* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem"
* value[x] only Quantity
* valueQuantity 1..1


Extension: MedicationCharacteristic
Id:        ihe-ext-medication-characteristic
Title:     "Medication: Characteristic"
Description: "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)"
Context: Medication

* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic"
* extension contains
    type 1..1 and
    value 0..1
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $medication-characteristic (example)
* extension[type] ^short = "Code specifying the type of characteristic of medication"
* extension[value] ^short = "Descriptive value of the characteristic"
* extension[value].value[x] only boolean or CodeableConcept or string or Quantity or dateTime or integer or decimal or Ratio


Extension: MedicationUnitOfPresentation
Id:        ihe-ext-medication-unitofpresentation
Title:     "Medication: Unit of presentation"
Description: "Unit of presentation, typically describing the smallest countable package item (e.g tablet, vial, ampoule, etc). Unit of presentation is also often used in describing pack size and the denominator of strength. If the size of presentation unit is relevant, it should be described in sizeOfItem extension."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1
* valueCodeableConcept from $eHDSIQuantityUnit (example)

Extension: MedicationRequestPrescribedQuantity
Id:        ihe-ext-medicationrequest-prescribedQuantity
Title:     "MedicationRequest: Prescribed Quantity"
Description: "Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource."
Context: MedicationRequest.dispenseRequest

* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity"
* value[x] only Quantity	
* valueQuantity ^short = "Overall quantity of the prescribed product. It may be number of packages or the quantity in other explicitly stated units."


Extension: OffLabel
Id:        ihe-ext-offLabel
Title:     "MedicationRequest: Off-label use"
Description: "Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product."

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"
* extension contains
    isOffLabelUse 1..1 and
    reason 0..*
* extension[isOffLabelUse].value[x] only boolean
* extension[isOffLabelUse] ^short = "Indicates off-label use. Must be 'true' when .reason is provided."
* extension[reason].value[x] only CodeableConcept
* extension[reason] ^short = "Reason or related clarification for off-label use."

[r4-end]

Extension: MedicationPackageType
Id: medication-package-type
Title: "Medication: Package type"
Description: "This extension applies to Medication and expresses the type of the container for the product (e.g. bottle, unit-dose blister, pre-filled pen)."
Context: Medication

* ^url = "http://hl7.eu/fhir/StructureDefinition/medication-package-type"
* value[x] only CodeableConcept
* valueCodeableConcept from $eHDSIPackage (example)	
* valueCodeableConcept ^short = "Type of container, e.g pre-filled syringe, unit-dose blister, sachet, etc."
