The extensions implementation guide is a package for all extensions specified by HL7 Europe for the EU realm.

This includes extensions defined for guides like 
- HL7 Europe Laboratory Report  
- HL7 Europe Medication Prescription and Dispense  
- HL7 Europe Hospital Discharge Report  
- HL7 Europe Imaging Study Report
- HL7 Europe European Patient Summary  
- HL7 Europe Base


### Overview


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
      <td>
        <a href="StructureDefinition-composition-basedOn-order-or-requisition.html"
           title="StructureDefinition/composition-basedOn-order-or-requisition">Composition: Based On Order</a>
      </td>
      <td>
        <p>This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills.</p>
      </td>
      <td>Composition</td>
    </tr>
    <tr>
      <td>
        <a href="StructureDefinition-information-recipient.html"
           title="StructureDefinition/information-recipient">Composition: Information recipient</a>
      </td>
      <td>
        <p>This extension applies to the Composition resource and is used to represent an intended recipient of the composition.</p>
      </td>
      <td>Composition</td>
    </tr>
    <tr>
      <td>
        <a href="StructureDefinition-presentedForm.html"
           title="StructureDefinition/presentedForm">Composition: Presented Form</a>
      </td>
      <td>
        <p>Human readable representation of the entire document. Multiple formats are allowed but they SHALL be semantically equivalent.</p>
      </td>
      <td>Composition</td>
    </tr>
    <tr>
      <td>
        <a href="StructureDefinition-consent-relatedCondition.html"
           title="StructureDefinition/consent-relatedCondition">Consent: Related Condition</a>
      </td>
      <td>
        <p>The problem or disorder to which the living will applies.</p>
      </td>
      <td>Consent</td>
    </tr>
    <tr>
      <td>
        <a href="StructureDefinition-encounter-legalStatus.html"
           title="StructureDefinition/encounter-legalStatus">Encounter: Legal Status</a>
      </td>
      <td>
        <p>Legal status/situation at admission. This extension may be used for representing the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority).</p>
      </td>
      <td>Encounter</td>
    </tr>
    <tr>
      <td>
        <a href="StructureDefinition-medication-package-type.html"
           title="StructureDefinition/medication-package-type">Medication: Package type</a>
      </td>
      <td>
        <p>This extension applies to Medication and expresses the type of the container for the product (e.g. bottle, unit-dose blister, pre-filled pen).</p>
      </td>
      <td>Medication</td>
    </tr>
  </tbody>
</table>
</div>