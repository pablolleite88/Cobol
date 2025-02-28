       IDENTIFICATION          DIVISION.

       PROGRAM-ID. CLIENTES.
      *    AQUI TEMOS UM COMENTARIO
       ENVIRONMENT             DIVISION.
       DATA                    DIVISION.
       WORKING-STORAGE         SECTION.
       01  WRK-NOME            PIC X(20) VALUE SPACES.
       01  WRK-SALDO           PIC 9(05) VALUE ZEROS.
       
       PROCEDURE               DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.
           DISPLAY "-----------------"    
      *--------SOMA 
           ADD 500 TO WRK-SALDO

           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY WRK-SALDO
           DISPLAY "-----------------"              
      *--------SUBTRACAO 
           SUBTRACT 200 FROM WRK-SALDO
           DISPLAY WRK-SALDO
           DISPLAY "-----------------"   
      *--------MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO
           DISPLAY "-----------------"              
      *--------DIVISION
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO  
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "-----------------"   
           STOP RUN.
