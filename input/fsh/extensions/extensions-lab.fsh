//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: CompositionBasedOnOrderOrRequisition
Id:   composition-basedOn-order-or-requisition
Title:  "Composition: Based On Order"
Description: "This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert SetFmmandStatusRule ( 2, trial-use )
* insert ExtensionContext(Composition)
* ^url = "http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition"
* value[x] only Reference (ServiceRequest) or Identifier

Extension: InformationRecipient
Id:   information-recipient
Title: "Composition: Information recipient"
Description: "This extension applies to the Composition resource and is used to represent an intended recipient of the composition."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Composition)
* insert SetFmmandStatusRule ( 2, trial-use )
* ^url = "http://hl7.eu/fhir/StructureDefinition/information-recipient"
* value[x] only Reference (Practitioner or Device or Patient or RelatedPerson or PractitionerRole or Organization or CareTeam or Group)

// moved from the HL7 Europe Laboratory Report IG, canonical and content unchanged (FHIR-56516)
Extension: LaboratoryAccredited
Id:   laboratory-accredited
Title:  "Many: Laboratory Accredited"
Description: """Simple accreditation extension.
For Observation it indicates that the laboratory test was/is accredited.
For ServiceRequest it indicates that the request shall be fulfilled by an accredited laboratory."""
Context: Observation, ServiceRequest
* insert SetFmmandStatusRule ( 2, trial-use )
* ^url = "http://hl7.eu/fhir/StructureDefinition/laboratory-accredited"
* value[x] only boolean
* valueBoolean 1..1

