This page describes the design choices that guided the creation of this guide aiming to:

* **Promote reuse** of FHIR artefacts across different European Implementation Guides and projects.
* **Avoid duplication** by complementing, rather than duplicating, existing FHIR core extensions or other widely adopted implementation guides.
* **Support harmonisation** across Member States to facilitate cross-border data exchange and EU-wide interoperability.
* **Encourage adoption beyond Europe**, contributing to globally usable solutions where appropriate.

These extensions are **not tied to a single use case or Implementation Guide** (e.g., IPS, ePrescription, or Hospital Discharge). Instead, they serve as **building blocks** that can be adopted wherever applicable, both in Europe and - hopefully - internationally.

---

### Scope of Extensions

The guide includes extensions that:

1. **Are not already available as part of the HL7 Universal Extensions package**
   We tried to avoid redefining concepts already covered.

2. **Are relevant across multiple European use cases and projects**
   Each extension has been assessed for its applicability in more than one domain (e.g., clinical summaries, prescriptions, laboratory reporting).

3. **Reflect European priorities and practices, with potential global relevance**
   Extensions address common requirements emerging from EU legislation (such as the **European Health Data Space**) and aim to support practices that could be beneficial in other regions.


### Excluded Extensions

This IG **does not include**:

* Extensions that are **use-case specific**, i.e., those needed only in one particular context of use (e.g., a specific national prescription service).
* Extensions that **duplicate universal FHIR extensions** or those already widely used in other international IGs.
* Extensions whose applicability is limited to a single country or region within Europe.

---

### Alignment with European and International Efforts

The EU Extensions are developed in close alignment with:

* **HL7 International artefacts** such as core extensions and resources.
* **HL7 Europe projects** (e.g., Patient Summary, Discharge Report, Cancer Common Data Model).
* Other European initiatives under the **European Health Data Space (EHDS)** framework.
* **Global FHIR community efforts**, ensuring that these extensions can be readily reused and adopted beyond Europe whenever they meet common international needs.

---

### Future Evolution

This IG is intended as a **living specification**. As new requirements are identified across European use cases and as global collaboration on interoperable health data exchange progresses, the set of EU Extensions will be reviewed and updated in collaboration with the European and international FHIR communities.
