CLASS lhc_ZGYM_I_SCHEDULE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR schedule RESULT result.
    METHODS validatedow FOR VALIDATE ON SAVE
      IMPORTING keys FOR schedule~validatedow.

ENDCLASS.

CLASS lhc_ZGYM_I_SCHEDULE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD validateDOW.
*    READ ENTITIES OF zgym_i_schedule IN LOCAL MODE
*      ENTITY Schedule
*        FIELDS ( DayOfWeek ) WITH CORRESPONDING #( keys )
*      RESULT DATA(dow).
*
*    LOOP AT dow INTO DATA(day).
*      SELECT FROM ZGYM_DOW_VH FIELDS ( weekday ) WHERE weekday = @day-DayOfWeek INTO @DATA(dow_val).
*        if dow_val is initial.
*          APPEND VALUE #( %tky = day-%tky ) TO failed-schedule.
*        endif.
*      ENDSELECT.
*    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
