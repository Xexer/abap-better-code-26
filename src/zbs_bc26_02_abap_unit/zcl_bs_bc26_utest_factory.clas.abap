CLASS zcl_bs_bc26_utest_factory DEFINITION
  PUBLIC ABSTRACT FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_bs_bc26_utest_injector.

  PUBLIC SECTION.
    CLASS-METHODS create_api
      RETURNING VALUE(result) TYPE REF TO zif_bs_bc26_utest.

  PRIVATE SECTION.
    CLASS-DATA double_api TYPE REF TO zif_bs_bc26_utest.
ENDCLASS.


CLASS zcl_bs_bc26_utest_factory IMPLEMENTATION.
  METHOD create_api.
    IF double_api IS BOUND.
      RETURN double_api.
    ELSE.
      RETURN NEW zcl_bs_bc26_utest( ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
