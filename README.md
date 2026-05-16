# ZNOX RAP Managed PO Header / Item

Simple SAP RAP managed scenario for purchase order headers and line items.

This sample is intentionally kept small for an ABAP environment on SAP BTP trial:

- managed RAP with draft
- early numbering for header UUIDs and item numbers
- no late numbering
- caller supplies purchase order business fields; keys are generated
- ABAP Cloud friendly primitive/table types and RAP administrative fields

## Repository Layout

- `.abapgit.xml` - abapGit repository settings
- `src/package.devc.xml` - package metadata
- `src/*.asddls` - table/view CDS sources
- `src/*.asbdef` - behavior definitions
- `src/*.asddlxs` - metadata extensions
- `src/*.srvdsrv` - service definition
- `src/zbp_nox_i_po_header.clas.*` - behavior pool class

## Objects

- Tables: `ZNOX_PO_HEADER`, `ZNOX_PO_ITEM`
- Interface views: `ZNOX_I_PO_HEADER`, `ZNOX_I_PO_ITEM`
- Projection views: `ZNOX_C_PO_HEADER`, `ZNOX_C_PO_ITEM`
- Behavior pool: `ZBP_NOX_I_PO_HEADER`
- Service definition: `ZNOX_UI_PO`

## Import Into ABAP Trial

1. Push this folder to a Git repository.
2. In ADT, create or choose an ABAP Cloud package such as `ZNOX_RAP_PO`.
3. Use abapGit in ADT to clone the repository into that package.
4. Pull the repository objects.
5. If ADT reports a dependency cycle between the header and item interface
   views, activate the imported objects together with mass activation.
6. Create a service binding for service definition `ZNOX_UI_PO`.
7. Publish the service binding as OData V4.

## Suggested Activation Order

1. `ZNOX_PO_HEADER`
2. `ZNOX_PO_ITEM`
3. `ZNOX_D_PO_HEADER`
4. `ZNOX_D_PO_ITEM`
5. `ZNOX_I_PO_HEADER` and `ZNOX_I_PO_ITEM` together
6. `ZBP_NOX_I_PO_HEADER`
7. `ZNOX_I_PO_HEADER` behavior definition
8. `ZNOX_C_PO_ITEM`
9. `ZNOX_C_PO_HEADER`
10. `ZNOX_C_PO_HEADER` projection behavior
11. Metadata extensions
12. `ZNOX_UI_PO`
