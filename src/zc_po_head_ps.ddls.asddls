@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View For PO Head'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}

//@UI:{ headerInfo: {
//     typeName: 'Purchase Order',
//     typeNamePlural: 'Purchase Orders',
//     title: {
//        type: #STANDARD,
//        value: 'PoNum'
//     } } }


define root view entity ZC_PO_HEAD_PS
  provider contract transactional_query
  as projection on ZI_PO_HEAD_PS
{
      @Search.defaultSearchElement: true
  key PoNum,
      DocCat,
      Type,
      CompCode,
      Org,
      Status,
      @Consumption.valueHelpDefinition: [{  
        entity: {
         name: 'ZI_VEND',
         element: 'Vendor'
        }}]
      Vendor,
      Plant,
      CreateBy,
      CreatedDateTime,
      ChangedDateTime,
      LocalLastChangedBy,
      /* Associations */
      _PO_items : redirected to composition child ZC_PO_ITEMS_PS
}
