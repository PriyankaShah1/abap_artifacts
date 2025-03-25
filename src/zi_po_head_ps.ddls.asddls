@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View For PO Head'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZI_PO_HEAD_PS
  as select from ztb_po_head
  composition [0..*] of ZI_PO_ITMS_PS as _PO_items
{

  key po_num                as PoNum,
      doc_cat               as DocCat,
      type                  as Type,
      comp_code             as CompCode,
      org                   as Org,
      status                as Status,
      vendor                as Vendor,
      plant                 as Plant,
      create_by             as CreateBy,
      created_date_time     as CreatedDateTime,
      changed_date_time     as ChangedDateTime,
      local_last_changed_by as LocalLastChangedBy,

      _PO_items

}
