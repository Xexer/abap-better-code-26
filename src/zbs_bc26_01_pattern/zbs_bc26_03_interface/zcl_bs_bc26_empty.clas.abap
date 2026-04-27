CLASS zcl_bs_bc26_empty DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_bs_bc26_interface.
ENDCLASS.


CLASS zcl_bs_bc26_empty IMPLEMENTATION.
  METHOD zif_bs_bc26_interface~get_timestamp.
  ENDMETHOD.


  METHOD zif_bs_bc26_interface~save_timestamp.
  ENDMETHOD.
ENDCLASS.
