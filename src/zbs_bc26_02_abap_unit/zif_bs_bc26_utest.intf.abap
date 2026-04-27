INTERFACE zif_bs_bc26_utest
  PUBLIC.

  DATA timestamp TYPE timestampl READ-ONLY.

  METHODS get_timestamp
    RETURNING VALUE(result) TYPE timestampl.

  METHODS save_timestamp.
ENDINTERFACE.
