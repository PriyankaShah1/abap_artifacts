@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'parameter'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zps_parameter_cds 
with parameters 
targetCurr : abap.cuky
as select from zemp_100
{
    employee_id,
    birth_date,
    entry_date,
    department_id
    
    }
    
    

