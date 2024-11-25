CLASS lhc_ZGYM_I_MEM_TYPE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zgym_i_mem_type RESULT result.

ENDCLASS.

CLASS lhc_ZGYM_I_MEM_TYPE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
