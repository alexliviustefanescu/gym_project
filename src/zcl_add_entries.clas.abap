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
*    DATA lrole TYPE  zgym_roles.
*
*    lrole-role = 'ADM'.
*    lrole-description = 'Admin'.
*
*    INSERT zgym_roles FROM @lrole.
*
*    lrole-role = 'MEM'.
*    lrole-description = 'Member'.
*
*    INSERT zgym_roles FROM @lrole.
*
*    lrole-role = 'REC'.
*    lrole-description = 'Receptionist'.
*
*    INSERT zgym_roles FROM @lrole.
*
*    lrole-role = 'INS'.
*    lrole-description = 'Instructor'.
*
*    INSERT zgym_roles FROM @lrole.
*    COMMIT WORK.

    DATA lmem TYPE  zgym_mem.

    lmem-user_id = '111'.
    lmem-start_date = '20240101'.
    lmem-end_date = '20240102'.

    INSERT zgym_mem from @lmem.
    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
