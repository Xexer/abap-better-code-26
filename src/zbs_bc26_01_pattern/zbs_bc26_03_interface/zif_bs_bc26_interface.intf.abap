INTERFACE zif_bs_bc26_interface
  PUBLIC.

  DATA timestamp TYPE timestampl READ-ONLY.

  METHODS get_timestamp
    RETURNING VALUE(result) TYPE timestampl.

  METHODS save_timestamp.
ENDINTERFACE.
