CLASS zcl_bs_bc26_singleton DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    DATA timestamp TYPE timestampl READ-ONLY.

    CLASS-METHODS get_instance
      RETURNING VALUE(result) TYPE REF TO zcl_bs_bc26_singleton.

    METHODS get_timestamp
      RETURNING VALUE(result) TYPE timestampl.

    METHODS save_timestamp.

  PRIVATE SECTION.
    CLASS-DATA singleton TYPE REF TO zcl_bs_bc26_singleton.
ENDCLASS.


CLASS zcl_bs_bc26_singleton IMPLEMENTATION.
  METHOD get_instance.
    IF singleton IS NOT BOUND.
      singleton = NEW zcl_bs_bc26_singleton( ).
    ENDIF.

    RETURN singleton.
  ENDMETHOD.


  METHOD get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD save_timestamp.
    timestamp = get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
