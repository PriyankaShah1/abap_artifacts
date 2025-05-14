CLASS zcl_flight_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_flight_class IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  select * from /dmo/flight into TABLE  @data(lt_flight).

  if sy-subrc = 0.
  modify zps_tb_travel from table @lt_flight.

  ENDIF.
   commit work and wait.
   out->write( lt_flight ).
  ENDMETHOD.
ENDCLASS.
