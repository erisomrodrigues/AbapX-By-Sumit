*----------------------------------------------------------------------*
***INCLUDE LZCUST_FG_ERIF01.
*----------------------------------------------------------------------*
FORM SAVE_ENTRY.

  ZCUSTOMER_T_ERI-CREATION_DATE = SY-DATUM.

ENDFORM.

FORM UPDATE.

  FIELD-SYMBOLS: <FS_FILED> TYPE ANY.

  LOOP AT TOTAL.

  ASSIGN COMPONENT 'CUST_MOD' OF STRUCTURE <VIM_TOTAL_STRUC> TO <FS_FILED>.

  IF sy-SUBRC = 0.

    IF NOT <FS_FILED> CO '1234567890'.
      MESSAGE 'PUT ONLY NUMBERS' TYPE 'I'.
    ENDIF.

  ENDIF.

  ENDLOOP.

*MESSAGE 'WE ARE IN UPDATE EVENT' TYPE 'I'.


ENDFORM.
