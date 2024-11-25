CLASS lhc_ZGYM_I_CHECK_IN DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zgym_i_check_in RESULT result.

ENDCLASS.

CLASS lhc_ZGYM_I_CHECK_IN IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
