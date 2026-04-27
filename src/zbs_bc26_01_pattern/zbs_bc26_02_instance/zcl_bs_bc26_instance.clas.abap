CLASS zcl_bs_bc26_instance DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA timestamp TYPE timestampl READ-ONLY.

    METHODS get_timestamp
      RETURNING VALUE(result) TYPE timestampl.

    METHODS save_timestamp.
ENDCLASS.


CLASS zcl_bs_bc26_instance IMPLEMENTATION.
  METHOD get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD save_timestamp.
    timestamp = get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
