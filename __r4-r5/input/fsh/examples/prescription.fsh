[r4-init]
Instance: medicationrequest-example
InstanceOf: MedicationRequest
Title: "MedicationRequest: example with extensions."
Description: """Example of MedicationRequest with extensions."""
Usage: #example

* meta.tag = $common-tags#actionable

* extension[+].url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"
* extension[=].extension[+].url = "isOffLabelUse"
* extension[=].extension[=].valueBoolean = false

* status = #active
* intent = #order
* medicationReference = Reference(04A-FirmagonBranded)
* subject.display = "Nice Patient"
* authoredOn = "2024-12-06"
* requester.display = "Dr. John Doe"
* reasonCode = $sct#10625071000119104 "Bronchopneumonia caused by bacteria (disorder)"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsDuration = 3 'd' "day"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 8
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].route = $sct#78421000 "Intramuscular route"
* dosageInstruction[=].doseAndRate.doseQuantity = 1500 'mg' "milligram(s)"
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].timing.repeat.boundsDuration = 4 'd' "day"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 8
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].route = $sct#78421000 "Intramuscular route"
* dosageInstruction[=].doseAndRate.doseRange.low = 750 'mg' "milligram(s)"
* dosageInstruction[=].doseAndRate.doseRange.high = 1500 'mg' "milligram(s)"
* dispenseRequest.extension.url = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity"
* dispenseRequest.extension.valueQuantity = 21 http://standardterms.edqm.eu#15060000 "Vial"
* dispenseRequest.validityPeriod.start = "2024-12-06"
* dispenseRequest.validityPeriod.end = "2024-12-13"
* substitution.allowedBoolean = true

[r4-end]