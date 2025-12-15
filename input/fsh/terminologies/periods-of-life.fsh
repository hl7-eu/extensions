ValueSet: PeriodsOfLifeVS
Id: periods-of-life-vs
Title: "Periods of Life Value Set"
Description: "A value set of periods of life extension ([SNOMED tree](https://browser.ihtsdotools.org/?perspective=full&conceptId1=767023003&edition=MAIN/2025-04-01&release=&languages=en))."
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept is-a #282032007 "Periods of life (qualifier value)"
* exclude $sct#282032007
