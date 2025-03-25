@AbapCatalog.sqlViewName: 'ZPSFLIGHTMET'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'flight meta data extension'
@Metadata.allowExtensions: true

define view Z_PS_Flight_metadata as select from /dmo/flight
{
     
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    price as Price,
    currency_code as CurrencyCode,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied,
    flight_date as fdate
}
