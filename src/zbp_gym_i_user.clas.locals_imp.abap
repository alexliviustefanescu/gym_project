CLASS lhc_ZGYM_I_USER DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR User RESULT result.
    METHODS validaterole FOR VALIDATE ON SAVE
      IMPORTING keys FOR user~validaterole.
    METHODS validatecode FOR VALIDATE ON SAVE
      IMPORTING keys FOR user~validatecode.
    METHODS fetchcodes.

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
      IF NOT ( user-role = 'MEM' OR user-role = 'ADM' OR user-role = 'REC' OR user-role = 'INS' ).
        APPEND VALUE #( %tky = user-%tky ) TO failed-user.

        APPEND VALUE #( %tky = user-%tky %msg = new_message(
                                 id       = 'ZGYM_MESSAGE_CLASS'
                                 number   = 001
                                 severity = if_abap_behv_message=>severity-error
                               )
                      ) TO reported-user.
      ENDIF.
      EXIT.
    ENDLOOP.
  ENDMETHOD.

  METHOD validatecode.

    DATA lt_tbl TYPE TABLE OF zgym_cntry_code.
    SELECT FROM zgym_cntry_code FIELDS * INTO TABLE @lt_tbl.

    READ ENTITIES OF zgym_i_user IN LOCAL MODE
      ENTITY User
       FIELDS ( CountryCode ) WITH CORRESPONDING #( keys )
    RESULT DATA(users).

    LOOP AT users INTO DATA(user).
      IF NOT line_exists( lt_tbl[ ccode = user-countrycode ] ).
        APPEND VALUE #( %tky = user-%tky ) TO failed-user.

        APPEND VALUE #( %tky = user-%tky %msg = new_message(
                                 id       = 'ZGYM_MESSAGE_CLASS'
                                 number   = 002
                                 severity = if_abap_behv_message=>severity-error
                               )
                      ) TO reported-user.
      ENDIF.
      EXIT.
    ENDLOOP.

  ENDMETHOD.

  METHOD fetchcodes.
  ENDMETHOD.

ENDCLASS.
