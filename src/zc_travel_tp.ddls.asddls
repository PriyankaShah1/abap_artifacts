@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'travel view consume'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZC_TRAVEL_TP 
provider contract transactional_query
as projection on ZR_TRAVEL_TP

{
 key TravelId,
  @ObjectModel.text:{ element: [ 'AgencyName' ] } 
@Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_AGENCY' , element: 'AgencyId' } } ] 
 AgencyId,
 _agency.Name as AgencyName, 
 @ObjectModel.text.element: [ 'CustomerName' ]  
 @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_CUSTOMER' , element: 'CustomerId' } } ] 
 CustomerId,
 _customer.LastName as CustomerName, 
 BeginDate,
 EndDate,
 BookingFee,
 TotalPrice,
 @Consumption.valueHelpDefinition: [{ entity : { name: 'I_CURRENCY' , element: 'Currency' } } ] 
 CurrencyCode,
 Description,
 @ObjectModel.text.element: [ 'OVERALLTEXT' ] 
 @Consumption.valueHelpDefinition: [{ entity : { name: '/DMO/I_Overall_Status_VH' , element: 'OverallStatus' } } ] 
 OverallStatus,
 _overall._Text.Text as OVERALLTEXT: localized , 
 CreatedBy,
 CreatedAt,
 LastChangedBy,
 LastChangedAt,
 /* Associations */
 _agency,
 _customer,
 _overall,
 _Bookings : redirected to composition child ZC_BOOKING_TP  
    
}
