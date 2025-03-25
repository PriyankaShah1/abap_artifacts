CLASS zcl_table_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_table_update IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA : lt_po_head TYPE TABLE OF ztb_po_head,
           lt_po_item TYPE TABLE OF ztb_po_items,
           lt_vendor  TYPE TABLE OF ztb_vendor,
           ls_po_head TYPE ztb_po_head,
           ls_po_item TYPE ztb_po_items,
           ls_vendor  TYPE ztb_vendor.


    DELETE FROM ztb_po_head.

    ls_po_head-client  = '100'.
    ls_po_head-po_num  = '1000000001'.
    ls_po_head-doc_cat = ''.
    ls_po_head-type    = 'NB'.
    ls_po_head-comp_code  = 'COMP'.
    ls_po_head-org        = 'ORG2'.
    ls_po_head-status     = 'B'.
    ls_po_head-vendor     = 'BAN'.
    ls_po_head-plant      = 'HYD'.
    ls_po_head-create_by  = ''.
    APPEND ls_po_head TO lt_po_head.

    ls_po_head-client  = '100'.
    ls_po_head-po_num  = '1000000002'.
    ls_po_head-doc_cat = ''.
    ls_po_head-type    = 'NB'.
    ls_po_head-comp_code  = 'COMP'.
    ls_po_head-org        = 'ORG2'.
    ls_po_head-status     = 'A'.
    ls_po_head-vendor     = 'BANG'.
    ls_po_head-plant      = 'HYD1'.
    ls_po_head-create_by  = ''.
    APPEND ls_po_head TO lt_po_head.

    ls_po_head-client  = '100'.
    ls_po_head-po_num  = '1000000003'.
    ls_po_head-doc_cat = 'B'.
    ls_po_head-type    = 'NB'.
    ls_po_head-comp_code  = '1003'.
    ls_po_head-org        = 'ORG1'.
    ls_po_head-status     = 'A'.
    ls_po_head-vendor     = 'COMP1'.
    ls_po_head-plant      = 'BANG'.
    ls_po_head-create_by  = 'Pawan'.
    APPEND ls_po_head TO lt_po_head.

    ls_po_head-client  = '100'.
    ls_po_head-po_num  = '1000000004'.
    ls_po_head-doc_cat = 'B'.
    ls_po_head-type    = 'NB'.
    ls_po_head-comp_code  = '1003'.
    ls_po_head-org        = 'ORG1'.
    ls_po_head-status     = 'B'.
    ls_po_head-vendor     = 'COMP1'.
    ls_po_head-plant      = 'BANG'.
    ls_po_head-create_by  = 'Pawan'.
    APPEND ls_po_head TO lt_po_head.

    ls_po_head-client  = '100'.
    ls_po_head-po_num  = '1000000005'.
    ls_po_head-doc_cat = 'B'.
    ls_po_head-type    = 'NB'.
    ls_po_head-comp_code  = '1003'.
    ls_po_head-org        = 'ORG1'.
    ls_po_head-status     = 'B'.
    ls_po_head-vendor     = 'COMP1'.
    ls_po_head-plant      = 'BANG'.
    ls_po_head-create_by  = 'Pawan'.
    APPEND ls_po_head TO lt_po_head.

    ls_po_head-client  = '100'.
    ls_po_head-po_num  = '1000000007'.
    ls_po_head-doc_cat = ''.
    ls_po_head-type    = 'NB'.
    ls_po_head-comp_code  = 'COMP'.
    ls_po_head-org        = 'ORG1'.
    ls_po_head-status     = 'A'.
    ls_po_head-vendor     = 'BAN'.
    ls_po_head-plant      = 'HYD1'.
    ls_po_head-create_by  = ''.
    APPEND ls_po_head TO lt_po_head.

    INSERT ztb_po_head FROM TABLE @lt_po_Head.
    COMMIT WORK.

    out->write( | Demo data generated for table ZTB_PO_HEAD. | ).

    DELETE FROM ztb_po_items.


    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000001'.
    ls_po_item-po_item     = '01001'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/12345'.
    ls_po_item-plant       = 'HYD'.
    ls_po_item-stor_loc    = 'HLC1'.
    ls_po_item-qty         = '10000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '50000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000001'.
    ls_po_item-po_item     = '01002'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/12345'.
    ls_po_item-plant       = 'HYD'.
    ls_po_item-stor_loc    = 'HLC1'.
    ls_po_item-qty         = '50000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '100000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000002'.
    ls_po_item-po_item     = '01001'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/12345'.
    ls_po_item-plant       = 'BANG'.
    ls_po_item-stor_loc    = 'BLC1'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '150000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000002'.
    ls_po_item-po_item     = '01002'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/12367'.
    ls_po_item-plant       = 'BANG'.
    ls_po_item-stor_loc    = 'BLC2'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '125000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000002'.
    ls_po_item-po_item     = '01003'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/18943'.
    ls_po_item-plant       = 'BANG'.
    ls_po_item-stor_loc    = 'BLC3'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '125000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000003'.
    ls_po_item-po_item     = '01001'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/18943'.
    ls_po_item-plant       = 'BANG'.
    ls_po_item-stor_loc    = 'BLC3'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '125000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000004'.
    ls_po_item-po_item     = '01001'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/18943'.
    ls_po_item-plant       = 'BANG'.
    ls_po_item-stor_loc    = 'BLC3'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '125000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000005'.
    ls_po_item-po_item     = '01001'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'lt/18943'.
    ls_po_item-plant       = 'BANG'.
    ls_po_item-stor_loc    = 'BLC3'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'KG'.
    ls_po_item-product_price = '125000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    ls_po_head-client      = '100'.
    ls_po_item-po_num      = '1000000007'.
    ls_po_item-po_item     = '01001'.
    ls_po_item-item_text   = 'Laptops'.
    ls_po_item-material    = 'Mb/12345'.
    ls_po_item-plant       = 'HYD'.
    ls_po_item-stor_loc    = '1001'.
    ls_po_item-qty         = '5000'.
    ls_po_item-uom         = 'PC'.
    ls_po_item-product_price = '50000'.
    ls_po_item-price_unit    = 'INR'.
    APPEND LS_PO_item TO LT_PO_item.

    INSERT ztb_po_items FROM TABLE @lt_po_item.
    COMMIT WORK.

    out->write( | Demo data generated for table ZTB_PO_ITEMS. | ).

    DELETE FROM ztb_vendor.

    ls_vendor-client  = '100'.
    ls_vendor-vendor  = 'COMP1'.
    ls_vendor-vendordesc  = 'Company1'.
    APPEND ls_vendor TO lt_vendor.

    ls_vendor-client  = '100'.
    ls_vendor-vendor  = 'COMP2'.
    ls_vendor-vendordesc  = 'Company2'.
    APPEND ls_vendor TO lt_vendor.

    ls_vendor-client  = '100'.
    ls_vendor-vendor  = 'COMP3'.
    ls_vendor-vendordesc  = 'Company3'.
    APPEND ls_vendor TO lt_vendor.

    ls_vendor-client  = '100'.
    ls_vendor-vendor  = 'COMP4'.
    ls_vendor-vendordesc  = 'Company4'.
    APPEND ls_vendor TO lt_vendor.

    INSERT ztb_vendor FROM TABLE @lt_VENDOR.
    COMMIT WORK.

    out->write( | Demo data generated for table ZTB_VENDOR. | ).

  ENDMETHOD.
ENDCLASS.
