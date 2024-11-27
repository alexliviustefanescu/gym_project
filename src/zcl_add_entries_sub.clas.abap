CLASS zcl_add_entries_sub DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS addweekdays.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_add_entries_sub IMPLEMENTATION.

  METHOD addweekdays.
DATA dow TYPE  ZGYM_DOW.

    dow = 'MON'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'TUE'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'WED'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'THU'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'FRI'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'SAT'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'SUN'.
    INSERT zgym_dow_vh FROM @dow.
    COMMIT WORK.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    me->addweekdays(  ).
  ENDMETHOD.

ENDCLASS.
