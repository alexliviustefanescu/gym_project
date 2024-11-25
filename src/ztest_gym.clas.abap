CLASS ztest_gym DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztest_gym IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data(wa) = value ZGYM_SCHEDULE( ).
    wa-class_id = 'dsad21'.
    wa-instructor_id = '123456'.
    wa-day_of_week = 'MON'.
    INSERT into zgym_schedule VALUES @wa.
  ENDMETHOD.
ENDCLASS.
