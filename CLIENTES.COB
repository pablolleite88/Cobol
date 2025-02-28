       IDENTIFICATION          DIVISION.

       PROGRAM-ID. CLIENTES.
      *    AQUI TEMOS UM COMENTARIO
       ENVIRONMENT             DIVISION.
       DATA                    DIVISION.
       WORKING-STORAGE         SECTION.
       01  WRK-NOME            PIC X(20) VALUE "PABLO".
       01  WRK-SALDO           PIC 9(05) VALUE 1200.
       
       PROCEDURE               DIVISION.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO "WRK-SALDO
           STOP RUN.
