Extension: ImmunizationNextDoseDate
Id:   immunization-nextDoseDate
Title:  "Immunization: Next Dose Date"
Description: """This extension is intended to be used exclusively to record the date of the next vaccination when this information is meant to be part of an immunization event record.

This extension SHALL NOT be used when the date of the next vaccination represents a planned or recommended future immunization. In such cases, the ImmunizationRecommendation resource should be used instead."""
Context: Immunization
* insert SetFmmandStatusRule ( 1, draft ) // to be changed after the ballot
* ^url = "http://hl7.eu/fhir/StructureDefinition/immunization-nextDoseDate"
* value[x] only dateTime
