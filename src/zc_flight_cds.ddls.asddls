@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_FLIGHT_CDS
  provider contract transactional_query
  as projection on ZPS_Flight_CDS as Travel
{
      @UI: {
      lineItem: [{ position: 10 }],
      selectionField: [{ position: 10 }]
      }
  key CarrierId,
      @UI.hidden: true
  key ConnectionId,
      @UI.lineItem: [{ position: 20 }]
  key FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @UI.lineItem: [{ position: 30 }]
      Price,
      @UI.lineItem: [{ position: 40 }]
      CurrencyCode,
       @UI.lineItem: [{ position: 50 }]
      PlaneTypeId,
       @UI.lineItem: [{ position: 60 }]
      SeatsMax,
       @UI.lineItem: [{ position: 70 }]
      SeatsOccupied,
       @UI.lineItem: [{ position: 80 }]
      AmountinCurrency,
       @UI.lineItem: [{ position: 90 }]
      status,
      /* Associations */
      _Currency
}
