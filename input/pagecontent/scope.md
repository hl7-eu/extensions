This guide sets out a collection of HL7 Europe extensions designed for applicability within the EU realm for both HL7 FHIR R4 and R5.

This includes extensions defined for HL7 Europe implementation guides, such as:

- HL7 Europe Laboratory Report  
- HL7 Europe Medication Prescription and Dispense  
- HL7 Europe Hospital Discharge Report  
- HL7 Europe Imaging Study Report

### Purpose

This guide aims to:

* **Promote reuse** of FHIR artefacts across different European Implementation Guides and projects.
* **Avoid duplication** by complementing, rather than duplicating, existing FHIR core extensions or other widely adopted implementation guides.
* **Support harmonisation** across Member States to facilitate cross-border data exchange and EU-wide interoperability.
* **Encourage adoption beyond Europe**, contributing to globally usable solutions where appropriate.


### Content Overview


<div>
<table class="grid">
  <col style="width:20%"/>
  <thead>
    <tr>
      <th>Extension</th>
      <th>Description</th>
      <th>Context</th>
    </tr>
  </thead>
       <tbody>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-composition-basedOn-order-or-requisition.html"
                  title="StructureDefinition/composition-basedOn-order-or-requisition">Composition: Based On Order</a>
            </td>
            <td>
<p>This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills.</p>
</td>
<td>Composition</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-information-recipient.html"
                  title="StructureDefinition/information-recipient">Composition: Information recipient</a>
            </td>
            <td>
<p>This extension applies to the Composition resource and is used to represent an intended recipient of the composition.</p>
</td>
<td>Composition</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-consent-relatedCondition.html"
                  title="StructureDefinition/consent-relatedCondition">Consent: Related Condition</a>
            </td>
            <td>
<p>The problem or disorder to which the living will applies.</p>
</td>
<td>Consent</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-composition-diagnosticReportReference.html"
                  title="StructureDefinition/composition-diagnosticReportReference">Document DiagnosticReport Reference</a>
            </td>
            <td>
<p>This extension provides a reference to the DiagnosticReport instance that is associated with this Composition.</p>
</td>
<td>DiagnosticReport</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-encounter-legalStatus.html"
                  title="StructureDefinition/encounter-legalStatus">Encounter: Legal Status</a>
            </td>
            <td>
<p>Legal status/situation at admission. This extension may be used for representing the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority).</p>
</td>
<td>Encounter</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-medication-package-type.html"
                  title="StructureDefinition/medication-package-type">Medication: Package type</a>
            </td>
            <td>
<p>This extension applies to Medication and expresses the type of the container for the product (e.g. bottle, unit-dose blister, pre-filled pen).</p>
</td>
<td>Medication</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-periods-of-life.html"
                  title="StructureDefinition/periods-of-life">Periods of Life</a>
            </td>
            <td>
<p>Extensions used to indicate a time period in a person's life as a reference to a coded value for that life period.</p>
</td>
<td>Age, Period, Range.low, Range.high</td>
         </tr>
      </tbody>
   </table>
</div>