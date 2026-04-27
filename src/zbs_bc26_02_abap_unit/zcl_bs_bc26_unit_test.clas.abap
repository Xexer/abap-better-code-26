CLASS zcl_bs_bc26_unit_test DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    "! CHeck if we reached the right moment
    "! @parameter result | X = Point reached
    METHODS is_the_right_moment
      RETURNING VALUE(result) TYPE abap_boolean.
ENDCLASS.


CLASS zcl_bs_bc26_unit_test IMPLEMENTATION.
  METHOD is_the_right_moment.
    DATA(timestamp) = zcl_bs_bc26_utest_factory=>create_api( ).

    RETURN xsdbool( timestamp->get_timestamp( ) = '20301231090000.0000000' ).
  ENDMETHOD.
ENDCLASS.
