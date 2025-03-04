       IDENTIFICATION        DIVISION.
       PROGRAM-ID. CLIENTES.
      * COMENTARIO
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT     IS COMMA.


       DATA                  DIVISION.
       WORKING-STORAGE       SECTION.
       01  WRK-NOME          PICTURE X(20)   VALUE SPACES.
       01  WRK-SALDO         PICTURE S9(10)  COMP VALUE ZEROS.
       01  WRK-SALDO-ED      PICTURE Z.ZZZ.ZZZ.ZZ9,99.
       01  WRK-TIPO-CONTA    PICTURE 9.

       PROCEDURE             DIVISION.
       
       0100-PRINCIPAL         SECTION.
           PERFORM 0200-INICIAR.
           PERFORM 0300-PROCESSAR.
           PERFORM 0400-FIM.

           STOP  RUN.
       0100-FIM. EXIT.
      *----------------------------------INICIAR
       0200-INICIAR           SECTION.

           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.
           DISPLAY "QUAL TIPO DE CONTA (1-FISICA 2-JURIDICA) ? ".
               ACCEPT WRK-TIPO-CONTA.

       0200-FIM. EXIT.

      *----------------------------------PROCESSAR
       0300-PROCESSAR         SECTION.

           IF WRK-SALDO GREATER THAN OR EQUAL  5000  AND
             (WRK-TIPO-CONTA EQUAL 1 OR WRK-TIPO-CONTA EQUAL 2 )

              DISPLAY WRK-NOME
              MOVE WRK-SALDO TO WRK-SALDO-ED
              DISPLAY "SALDO " WRK-SALDO-ED
           ELSE
                 EVALUATE TRUE
                    WHEN WRK-SALDO LESS 5000
                      DISPLAY "SALDO NAO COMPATIVEL"
                    WHEN WRK-TIPO-CONTA NOT EQUAL 1 OR
                         WRK-TIPO-CONTA NOT EQUAL 2
                        DISPLAY "TIPO DE CONTA NAO EXISTE"
                 END-EVALUATE
           END-IF.

       0300-FIM. EXIT.

      *----------------------------------FINALIZAR 
       0400-FINALIZAR         SECTION.

           DISPLAY "------------------------------".
           DISPLAY "------   FIM   ---------------".
       0400-FIM. EXIT.