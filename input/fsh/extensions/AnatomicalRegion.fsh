Extension: AnatomicalRegion
Id:   anatomical-region
Title:  "Many: Anatomical Region"
Description: """The anatomical region to which the imaging study or diagnostic report applies."""
Context: ImagingStudy, DiagnosticReport
* insert SetFmmandStatusRule ( 2, trial-use )  
* ^url = "http://hl7.eu/fhir/StructureDefinition/anatomical-region"
* value[x] only CodeableConcept
