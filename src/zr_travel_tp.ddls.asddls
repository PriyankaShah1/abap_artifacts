@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'travel view managed-TP'
@Metadata.ignorePropagatedAnnotations: false
define root view entity ZR_TRAVEL_TP as select from ZI_EO_TRAVEL 
composition[0..*] of ZR_BOOKING_TP as _Bookings

association [0..1] to /DMO/I_Agency as _agency on $projection.AgencyId = _agency.AgencyID 

association [0..1] to /DMO/I_Customer as _customer on $projection.CustomerId = _customer.CustomerID 

association [0..1] to I_Currency as _currency on $projection.CurrencyCode = _currency.Currency 

association [1..1] to /DMO/I_Overall_Status_VH as _overall on $projection.OverallStatus = _overall.OverallStatus 
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    _Bookings ,
    _agency,
    _customer,
    _currency,
    _overall
}
