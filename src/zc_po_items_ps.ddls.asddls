@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View For PO Items'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_PO_ITEMS_PS
  as projection on ZI_PO_ITMS_PS
{
  key PoNum,
  key PoItem,
      ItemText,
      Material,
      Plant,
      StorLoc,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      Qty,
      Uom,
      @Semantics.amount.currencyCode: 'PriceUnit'
      ProductPrice,
      PriceUnit,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
     _po_hd : redirected to parent ZC_PO_HEAD_PS
}
