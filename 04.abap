CLASS zrud_04 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS:
      reverse
        IMPORTING iv_number        TYPE i
        RETURNING VALUE(rv_result) TYPE i,

      isPalindrome
        IMPORTING iv_check         TYPE i
        RETURNING VALUE(rv_return) TYPE i.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrud_04 IMPLEMENTATION.


  METHOD reverse.

* This method reverse a number (input 12345 output 54321)

    DATA n TYPE i VALUE 0.
    n = iv_number.
    rv_result = 0.
    WHILE n > 0.
      rv_result = 10 * rv_result + ( n MOD 10 ).
      n = n DIV 10.
    ENDWHILE.

  ENDMETHOD.



  METHOD isPalindrome.

*This method returns a number if it is a palindrome (7887 and so on).

    DATA n TYPE i VALUE 0.
    n = iv_check.
    IF n = reverse( n ).
      rv_return = n.
    ENDIF.

  ENDMETHOD.



  METHOD if_oo_adt_classrun~main.


    DATA: a                 TYPE i,
          b                 TYPE i,
          largestPalindrome TYPE i.

    a = 999.

    WHILE a >= 100.
      b = 999.

      WHILE b >= a.
        IF a * b <= largestPalindrome.
          EXIT.
        ENDIF.

        IF  isPalindrome( a * b ) IS NOT INITIAL.
          largestPalindrome = a * b.
        ENDIF.

        b = b - 1.
      ENDWHILE.

      a = a - 1.
    ENDWHILE.

    out->write( largestPalindrome ).
  ENDMETHOD.
ENDCLASS.
