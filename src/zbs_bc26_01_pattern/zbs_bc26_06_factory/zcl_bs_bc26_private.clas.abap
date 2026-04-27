CLASS zcl_bs_bc26_private DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_bs_bc26_factory.

  PUBLIC SECTION.
    INTERFACES zif_bs_bc26_interface.
ENDCLASS.


CLASS zcl_bs_bc26_private IMPLEMENTATION.
  METHOD zif_bs_bc26_interface~get_timestamp.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD zif_bs_bc26_interface~save_timestamp.
    zif_bs_bc26_interface~timestamp = zif_bs_bc26_interface~get_timestamp( ).
  ENDMETHOD.
ENDCLASS.
