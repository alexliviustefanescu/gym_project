CLASS zcl_add_entries DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_add_entries IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA lrole TYPE  zgym_roles.

    lrole-role = 'ADM'.
    lrole-description = 'Admin'.

    INSERT zgym_roles FROM @lrole.

    lrole-role = 'MEM'.
    lrole-description = 'Member'.

    INSERT zgym_roles FROM @lrole.

    lrole-role = 'REC'.
    lrole-description = 'Receptionist'.

    INSERT zgym_roles FROM @lrole.

    lrole-role = 'INS'.
    lrole-description = 'Instructor'.

    INSERT zgym_roles FROM @lrole.
    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
