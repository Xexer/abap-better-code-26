CLASS ltd_timestamp DEFINITION FOR TESTING.
  PUBLIC SECTION.
    INTERFACES zif_bs_bc26_utest PARTIALLY IMPLEMENTED.
ENDCLASS.


CLASS ltd_timestamp IMPLEMENTATION.
  METHOD zif_bs_bc26_utest~get_timestamp.
    RETURN '20301231090000.0000000'.
  ENDMETHOD.
ENDCLASS.


CLASS ltc_right DEFINITION FINAL
  FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.

  PRIVATE SECTION.
    METHODS moment_reached     FOR TESTING RAISING cx_static_check.
    METHODS moment_not_reached FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltc_right IMPLEMENTATION.
  METHOD moment_reached.
    zcl_bs_bc26_utest_injector=>inject_api( NEW ltd_timestamp( ) ).
    DATA(cut) = NEW zcl_bs_bc26_unit_test( ).

    DATA(result) = cut->is_the_right_moment( ).

    cl_abap_unit_assert=>assert_true( result ).
  ENDMETHOD.


  METHOD moment_not_reached.
    DATA(cut) = NEW zcl_bs_bc26_unit_test( ).

    DATA(result) = cut->is_the_right_moment( ).

    cl_abap_unit_assert=>assert_false( result ).
  ENDMETHOD.
ENDCLASS.
