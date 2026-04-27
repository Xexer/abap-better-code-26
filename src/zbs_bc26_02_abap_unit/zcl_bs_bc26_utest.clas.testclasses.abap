CLASS ltc_wrong_test DEFINITION FINAL
  FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.

  PRIVATE SECTION.
    METHODS timestamp_correct FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltc_wrong_test IMPLEMENTATION.
  METHOD timestamp_correct.
    DATA(cut) = zcl_bs_bc26_utest_factory=>create_api( ).

    DATA(result) = cut->get_timestamp( ).

    cl_abap_unit_assert=>assert_equals( exp = '20260427185034.1844990'
                                        act = result ).
  ENDMETHOD.
ENDCLASS.
