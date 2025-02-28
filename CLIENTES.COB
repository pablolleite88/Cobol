       IDENTIFICATION          DIVISION.

       PROGRAM-ID. CLIENTES.
      *    AQUI TEMOS UM COMENTARIO
       ENVIRONMENT             DIVISION.
       CONFIGURATION           SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT       IS COMMA.
       DATA                    DIVISION.
       WORKING-STORAGE         SECTION.
       01  WRK-NOME            PIC X(20) VALUE SPACES.
       01  WRK-SALDO           PIC S9(10) VALUE ZEROS.
       01  WRK-SALDO-ED        PIC Z.ZZZ.ZZZ.ZZ9,99. 
       PROCEDURE               DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.
           DISPLAY "-----------------"    

           DISPLAY WRK-NOME.
      *--------SOMA 
           ADD 500 TO WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO: " WRK-SALDO-ED.
           DISPLAY "-----------------"       

      *--------SUBTRACAO 
           SUBTRACT 500 FROM WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO: " WRK-SALDO-ED.
           DISPLAY "-----------------"      

      *--------MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO: " WRK-SALDO-ED.
           DISPLAY "-----------------"       

      *--------DIVISION
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO  
               MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO: " WRK-SALDO-ED.
           DISPLAY "-----------------"      
           STOP RUN.
