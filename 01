DATA:
  co_number TYPE i VALUE 1000,
  lv_sum    TYPE i VALUE 0,
  lv_number TYPE i VALUE 3.

WHILE lv_number < co_number.
  IF ( lv_number MOD 3 = 0 ) OR ( lv_number MOD 5 = 0 ).
    lv_sum = lv_sum + lv_number.
  ENDIF.
  lv_number = lv_number + 1.
ENDWHILE.

WRITE lv_sum.
