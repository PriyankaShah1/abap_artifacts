@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'flight cds  view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZPS_Flight_CDS

  as select from zps_tb_travel
  association [0..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
{
  key carrier_id     as CarrierId,
  key connection_id  as ConnectionId,
  key flight_date    as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price          as Price,
      currency_code  as CurrencyCode,
      plane_type_id  as PlaneTypeId,
      seats_max      as SeatsMax,
      seats_occupied as SeatsOccupied,
      //concat
      concat(cast(price as abap.char( 20 )),currency_code) as AmountinCurrency,
      
      //case
     case 
      when seats_occupied < 50 then '1'
      when seats_occupied < 150 then '2'
      when seats_occupied < 250 then '3'
      else '0'
      end as status,
       
      //association   
      
      _Currency
}
