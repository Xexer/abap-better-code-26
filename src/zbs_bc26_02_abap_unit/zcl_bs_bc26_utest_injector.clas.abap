CLASS zcl_bs_bc26_utest_injector DEFINITION
  PUBLIC ABSTRACT FINAL
  CREATE PUBLIC
  FOR TESTING.

  PUBLIC SECTION.
    CLASS-METHODS inject_api
      IMPORTING double TYPE REF TO zif_bs_bc26_utest OPTIONAL.
ENDCLASS.


CLASS zcl_bs_bc26_utest_injector IMPLEMENTATION.
  METHOD inject_api.
    zcl_bs_bc26_utest_factory=>double_api = double.
  ENDMETHOD.
ENDCLASS.
