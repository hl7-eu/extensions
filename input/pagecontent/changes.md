This page summarizes the main changes applied to this version of the guide.

### 1.3.0 to 1.3.1

Version 1.3.1 is a technical correction of the 1.3.0 release. Neither change alters what implementers exchange.

* Clarified the description of the Encounter Legal Status extension, which described the basis on which the patient is staying rather than the legal status of the admission (FHIR-56354)
* Took over the Laboratory Accredited extension from the HL7 Europe Laboratory Report IG (FHIR-56516). An extension of general applicability belongs in this guide; its canonical `http://hl7.eu/fhir/StructureDefinition/laboratory-accredited` and its content are unchanged, so instances using it keep validating, against this package instead of that one. The counterpart in the Laboratory Report IG is FHIR-57043.

### 1.2.0 to 1.3.0

* New Anatomical Region extension (FHIR-55635)
* Extended the context of the PeriodsOfLife extension to Range(FHIR-55976)
* Removed the list of extensions from the scope page

### 0.1.1 to 1.2.0

* Extended the context of the PeriodsOfLife extension to dateTime (FHIR-53551)
* Extended the context of the Information Recipient extension to CareTeam and Group (FHIR-53599)
* General maintenance: aligned the versioning with the new HL7 EU guidelines (version bumped to `1.2.0`) (FHIR-53618)

### 0.1.1-ballot to 0.1.1

* Fixed typos in the Composition example (FHIR-51441; FHIR-51366)
* Added explanations about the usage of the R4 and R5 packages (FHIR-51225)
* Added Composition to DiagnosticReport reference extension (FHIR-51158)
* Composition.BasedOn cardinality to 0..* (FHIR-51386)