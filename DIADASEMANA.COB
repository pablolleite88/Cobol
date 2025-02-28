       IDENTIFICATION DIVISION.
       
       PROGRAM-ID. EXEMPLO-EVALUATE.
       AUTHOR. SEU-NOME.
       DATE-WRITTEN. 2023-10-27.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CODIGO-DIA PIC 9.
       01 NOME-DIA PIC X(10).
       
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O CODIGO DO DIA DA SEMANA (1-7): '.
           ACCEPT CODIGO-DIA.
           EVALUATE CODIGO-DIA
               WHEN 1
                   MOVE 'DOMINGO' TO NOME-DIA
               WHEN 2
                   MOVE 'SEGUNDA' TO NOME-DIA
               WHEN 3
                   MOVE 'TERCA' TO NOME-DIA
               WHEN 4
                   MOVE 'QUARTA' TO NOME-DIA
               WHEN 5
                   MOVE 'QUINTA' TO NOME-DIA
               WHEN 6
                   MOVE 'SEXTA' TO NOME-DIA
               WHEN 7
                   MOVE 'SABADO' TO NOME-DIA
               WHEN OTHER
                   MOVE 'INVALIDO' TO NOME-DIA
           END-EVALUATE.
           DISPLAY 'O DIA DA SEMANA E: ' NOME-DIA.
           STOP RUN.