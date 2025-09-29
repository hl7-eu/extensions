// --------------------------------------------------
ValueSet: ExampleLegalStatusVS
Id: example-legal-status-eu-hdr
Title: "Example of Legal Status at admission"
Description: "This is an example value set representing the Legal status / Situation at admission."
* insert SetFmmAndStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* $sct#135848002 "Voluntary admission"
* $sct#135847007 "Involuntary admission"
* $sct#52748007 "Involuntary hospital admission    "
* $sct#70755000 "Hospital admission, by legal authority (commitment)   "
