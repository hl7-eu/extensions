Instance: DiagnosticReportStructured
InstanceOf: DiagnosticReport
Title: "DiagnosticReport: structured report"
Description: "Example of a DiagnosticReportEuImaging showing the report for a stress echo"
Usage: #example
* identifier
  * system = "http://example.org/myhosptital/reportidentifiers"
  * value = "dfkjewoieoijwoskdjf" // invented - not there in the report* 
* status = #final
* effectiveDateTime = "2003-06-01"
* language = #en-GB
* basedOn // order
  * type = #ServiceRequest
  * identifier
    * type
      * coding[+] = $v2-0203#ACSN 
      * coding[+] = http://dicom.nema.org/resources/ontology/DCM#121022 "Accession Number"
    * system = "http://example.org/myhosptital/accessionsystem"
    * value  = "87654321" // invented - not there in the report
* code = http://www.ama-assn.org/go/cpt#93351 "STRESS TTE COMPLETE"
* subject.display = "Nice Patient"
* extension[anatomical-region].valueCodeableConcept.coding = $sct#67734004 

* performer.display = "Best Radiology Dept."
* resultsInterpreter.display = "Dr. John Doe"
* result.display = "radiology observation"