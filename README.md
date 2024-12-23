# HL7 Europe extensions

This guide gathers the extensions specified by HL7 Europe for the EU REALM.

Two versions of the guide are publised the 
* HL7 FHIR R4 Base IG (hl7.fhir.eu.extensions)
  * [Github extensions repos](https://github.com/hl7-eu/extensions);
  * [CI-build](https://build.fhir.org/ig/hl7-eu/extensions)
* HL7 FHIR R5 Base IG (hl7.fhir.eu.extensions.r5)
  * [Github extensions-r5 repos](https://github.com/hl7-eu/extensions-r5);
  * [CI-build](https://build.fhir.org/ig/hl7-eu/extensions-r5)

## How to Contribute

The goal is to use common sources files for both developmnet environemts for this guide (HL7 FHIR versions R4 and R5).

To support this a special directory, called __r4-r5, has been created.

This directory has the same structure used for the HL7 FHIR IGs (where __r4-r5 corresponds to the root directory), and includes all the source files containing R4 and R5 specific instructions.

These "special" source files are pre proccesed by the python script preProcessRxBuild.py included in the 'scripts' folder and copied in the root directory. 
The script generates the appropriate source files for the HL7 FHIR version choosen.
This script is documented [here](scripts/README.md).

Any change in the source files that are present in both the root and in the '__r4-r5' folders MUST BE DONE updating the files in the '__r4-r5' folder.
(Otherwise your changes will be overwritten)

It is *strongly suggested* that changes on the source files are done in the base repository (currently the R4 guide), rebuilding the R5 version following this process.

![this process](change-mgmt.drawio.svg)

