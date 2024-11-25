CLASS lhc_ZGYM_I_SCHEDULE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zgym_i_schedule RESULT result.

ENDCLASS.

CLASS lhc_ZGYM_I_SCHEDULE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
