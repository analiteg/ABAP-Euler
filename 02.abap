    CONSTANTS co_limit TYPE i VALUE 4000000.
    DATA:
      lv_sum TYPE i VALUE 0,
      a      TYPE i VALUE 1,
      b      TYPE i VALUE 1,
      h      TYPE i.


    WHILE b < co_limit.
      IF b MOD 2 = 0.
        lv_sum = lv_sum + b.
      ENDIF.
      h = a + b.
      a = b.
      b = h.
    ENDWHILE.
