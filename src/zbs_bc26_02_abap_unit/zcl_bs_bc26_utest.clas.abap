CLASS zcl_bs_bc26_utest DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_bs_bc26_utest_factory.

  PUBLIC SECTION.
    INTERFACES zif_bs_bc26_utest.
ENDCLASS.


CLASS zcl_bs_bc26_utest IMPLEMENTATION.
  METHOD zif_bs_bc26_utest~get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD zif_bs_bc26_utest~save_timestamp.
    zif_bs_bc26_utest~timestamp = zif_bs_bc26_utest~get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
