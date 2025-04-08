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

To support this, a special directory called `__r4-r5` has been created — and is now managed as a **Git submodule**. This ensures the shared content for both R4 and R5 versions can be reused and updated consistently across different projects.

To **clone the repository with the submodule**, use:

```bash
git clone --recurse-submodules https://github.com/hl7-eu/extensions-multi-versions.git
```

If you've already cloned the repository, you can initialize the submodule with:

```bash
git submodule update --init --recursive
```

⚠️ **Important:** Any changes to files in the `__r4-r5` directory must be:

1. Made *within* the submodule (`__r4-r5` folder),
2. Committed and pushed to the `__r4-r5` repository directly,
3. Then the updated submodule reference must be committed in this parent repository.

This ensures the `__r4-r5` folder remains properly in sync across all guides using it.

This directory has the same structure used for the HL7 FHIR IGs (where __r4-r5 corresponds to the root directory), and includes all the source files containing R4 and R5 specific instructions.

These "special" source files are pre processed by the python script preProcessRxBuild.py included in the 'scripts' folder and copied in the root directory. 
The script generates the appropriate source files for the HL7 FHIR version choosen.
This script is documented [here](scripts/README.md).

Any change in the source files that are present in both the root and in the '__r4-r5' folders MUST BE DONE updating the files in the '__r4-r5' folder.
(Otherwise your changes will be overwritten)


![this process](change-mgmt.drawio.svg)



## Managing the `__r4-r5` Submodule

- To pull the latest changes from the submodule:

```bash
git submodule update --remote --merge
```

- To commit changes to the submodule:

```bash
cd __r4-r5
# make changes
git add .
git commit -m "Update shared content"
git push
```

Then in the parent repo:

```bash
git add __r4-r5
git commit -m "Update submodule reference"
git push
```
