       IDENTIFICATION      DIVISION.
      *----------------------------------------------------------------- 
       PROGRAM-ID. CALCULAMEDIA.
       AUTHOR. SEU-NOME.
       DATE-WRITTEN. 2023-10-27.
      *-----------------------------------------------------------------        
       ENVIRONMENT         DIVISION.
       SPECIAL-NAMES.
           DECIMAL-POINT       IS COMMA.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01 NOTA1 PIC 9(03)V99.
       01 NOTA2 PIC 9(03)V99.
       01 MEDIA PIC 9(03)V99.
       PROCEDURE           DIVISION.
      *INICIO-----------------------------------------------------------      
           DISPLAY 'DIGITE A PRIMEIRA NOTA: '.
           ACCEPT NOTA1.
           DISPLAY 'DIGITE A SEGUNDA NOTA: '.
           ACCEPT NOTA2.
           COMPUTE MEDIA = (NOTA1 + NOTA2) / 2.
           DISPLAY 'A MEDIA E: ' MEDIA.
           IF MEDIA > 7
               DISPLAY 'ALUNO APROVADO.'
           ELSE
               DISPLAY 'ALUNO REPROVADO.'
           END-IF.
           STOP RUN.