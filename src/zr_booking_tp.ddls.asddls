@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'booking view managed-TP'
@Metadata.ignorePropagatedAnnotations: false   // "imp not bcz all annotations at I view level so it is specific to application
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_BOOKING_TP as select from ZI_EO_BOOKING
association to parent ZR_TRAVEL_TP as _Travel on $projection.TravelId = _Travel.TravelId
association [1..1] to /DMO/I_Customer as _customer on $projection.CustomerId = _customer.CustomerID 

{
 key TravelId,
 key BookingId,
 BookingDate,
 CustomerId,
 CarrierId,
 ConnectionId,
 FlightDate,
 FlightPrice,
 CurrencyCode,
 BookingStatus,
 _Travel  ,
 _customer 
}
