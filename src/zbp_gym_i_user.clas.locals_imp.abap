CLASS lhc_ZGYM_I_USER DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR User RESULT result.
    METHODS validaterole FOR VALIDATE ON SAVE
      IMPORTING keys FOR user~validaterole.
    METHODS validatecode FOR VALIDATE ON SAVE
      IMPORTING keys FOR user~validatecode.
    METHODS fetchcodes.
    METHODS validatemail FOR VALIDATE ON SAVE
      IMPORTING keys FOR user~validatemail.

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

  METHOD validatemail.

    DATA: go_regex   TYPE REF TO cl_abap_regex,
          go_matcher TYPE REF TO cl_abap_matcher,
          go_match   TYPE c LENGTH 1,
          gv_msg     TYPE string.

    READ ENTITIES OF zgym_i_user IN LOCAL MODE
      ENTITY User
       FIELDS ( Email ) WITH CORRESPONDING #( keys )
    RESULT DATA(users).

    CREATE OBJECT go_regex
      EXPORTING
        pattern     = '\w+(\.\w+)*@(\w+\.)+(\w{2,4})'
        ignore_case = abap_true.

    LOOP AT users INTO DATA(user).
      go_matcher = go_regex->create_matcher( text = user-Email ).
      IF go_matcher->match(  ) IS INITIAL.
        APPEND VALUE #( %tky = user-%tky ) TO failed-user.

        APPEND VALUE #( %tky = user-%tky %msg = new_message(
                                 id       = 'ZGYM_MESSAGE_CLASS'
                                 number   = 003
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
