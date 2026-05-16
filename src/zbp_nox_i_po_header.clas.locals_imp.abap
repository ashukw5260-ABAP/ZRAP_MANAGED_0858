CLASS lhc_header DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS earlynumbering_cba_items FOR NUMBERING
      IMPORTING entities FOR CREATE Header\_Items.

    METHODS setstatusnew FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Header~SetStatusNew.

    METHODS validatecompanycode FOR VALIDATE ON SAVE
      IMPORTING keys FOR Header~ValidateCompanyCode.

    METHODS validatesupplier FOR VALIDATE ON SAVE
      IMPORTING keys FOR Header~ValidateSupplier.

ENDCLASS.



CLASS lhc_header IMPLEMENTATION.

  METHOD setstatusnew.

  ENDMETHOD.

  METHOD earlynumbering_cba_items.

  ENDMETHOD.

  METHOD validatecompanycode.

  ENDMETHOD.

  METHOD validatesupplier.

  ENDMETHOD.

ENDCLASS.



CLASS lhc_item DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS defaultcurrency FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Item~DefaultCurrency.

    METHODS validatequantity FOR VALIDATE ON SAVE
      IMPORTING keys FOR Item~ValidateQuantity.

    METHODS validatenetprice FOR VALIDATE ON SAVE
      IMPORTING keys FOR Item~ValidateNetPrice.


ENDCLASS.



CLASS lhc_item IMPLEMENTATION.


  METHOD defaultcurrency.

  ENDMETHOD.


  METHOD validatequantity.

  ENDMETHOD.


  METHOD validatenetprice.

  ENDMETHOD.


ENDCLASS.

