 "Data for Check time execution
    DATA: lv_timestamp_start TYPE timestampl,
          lv_timestamp_end   TYPE timestampl.

    "Start timer
    GET TIME STAMP FIELD lv_timestamp_start.


    "Data
    DATA: n          TYPE int8 VALUE 600851475143,
          factor     TYPE i    VALUE 0,
          lastFactor TYPE i    VALUE 0,
          maxFactor  TYPE i    VALUE 0.

    IF n MOD 2 = 0.
      lastFactor = 2.
      n = n DIV 2.
      WHILE n MOD 2 = 0.
        n = n DIV 2.
      ENDWHILE.
    ELSE.
      lastFactor = 1.
    ENDIF.

    factor = 3.
    maxFactor = sqrt( n ).

    WHILE n > 1 AND factor <= maxFactor.
      IF n MOD factor = 0.
        n = n DIV factor.
        lastFactor = factor.
        WHILE n MOD factor = 0.
          n = n DIV factor.
        ENDWHILE.
        maxFactor = sqrt( n ).
      ENDIF.
      factor = factor + 2.
    ENDWHILE.

    "Output
    IF n = 1.
      out->write( lastFactor ).
    ELSE.
      out->write( n ).
    ENDIF.

    "Stop timer
    GET TIME STAMP FIELD lv_timestamp_end.
    out->write( lv_timestamp_end - lv_timestamp_start ).
