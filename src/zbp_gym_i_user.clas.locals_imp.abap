CLASS lhc_ZGYM_I_USER DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR User RESULT result.
    METHODS validaterole FOR VALIDATE ON SAVE
      IMPORTING keys FOR user~validaterole.

ENDCLASS.

CLASS lhc_ZGYM_I_USER IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD validateRole.
    READ ENTITIES OF zgym_i_user IN LOCAL MODE
      ENTITY User
        FIELDS ( Role ) WITH CORRESPONDING #( keys )
      RESULT DATA(users).

    LOOP AT users INTO DATA(user).
      IF NOT ( user-role = 'MEM' or user-role = 'ADM' or user-role = 'REC' or user-role = 'INS' ).
        APPEND VALUE #( %tky = user-%tky ) TO failed-user.
      ENDIF.
      EXIT.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
