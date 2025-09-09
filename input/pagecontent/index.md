{% include fsh-link-references.md %}

### Scope

This guide sets out a collection of HL7 Europe extensions designed for applicability within the EU realm for both HL7 FHIR R4 and R5.

This includes extensions defined for HL7 Europe implementation guides, such as:

- HL7 Europe Laboratory Report  
- HL7 Europe Medication Prescription and Dispense  
- HL7 Europe Hospital Discharge Report  
- HL7 Europe Imaging Study Report
- HL7 Europe European Patient Summary  
- HL7 Europe Base and Core

### About this guide

This is an HL7 FHIR R5 Implementation Guide intended for generating packages for both HL7 FHIR R4 and R5.

Release-specific NPM Package and Definitions can be downloaded from the [Download page](downloads.html) of this guide

### How to use this package

HL7 FHIR Implementation guides aiming to use the extensions defined by this guide has to declare dependecy to this package version as follows
(the example shows how it should be declared in the sushi-config.yaml file):

#### HL7 FHIR R4

```yaml
dependencies:
  hl7.fhir.eu.extensions.r4: 0.1.1-snapshot-1
```

#### HL7 FHIR R5

```yaml
dependencies:
  hl7.fhir.eu.extensions.r5: 0.1.1-snapshot-1
```