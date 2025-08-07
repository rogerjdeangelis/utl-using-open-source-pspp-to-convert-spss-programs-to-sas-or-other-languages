%let pgm=utl-using-open-source-pspp-to-convert-spss-programs-to-sas-or-other-languages;

%stop_submission;

Using open source pspp to convert spss programs to sas or other languages

CONTENTS
   1 the spss progra
   2 the sas program

github
https://tinyurl.com/3ck9fmf3
https://github.com/rogerjdeangelis/utl-using-open-source-pspp-to-convert-spss-programs-to-sas-or-other-languages

PROBLEM (extract the word before "?" in string "part1?part2)
My sas coworkers asked me to convert the spss program below to sas

communities.sas
https://tinyurl.com/bdhpaszk
https://communities.sas.com/t5/SAS-Programming/Translating-a-code-from-SPSS-to-SAS/m-p/753555#M237528

/**************************************************************************************************************************/
/* INPUT                        | PROCESS                                | OUTPUT                                         */
/* =====                        | =======                                | ======                                         */
/* /*--- SPSS datastep ---*/    | 1 SPSS CODE TO CONVERT TO SAS          | Data List                                      */
/*                              | ==============================         |   +-------+                                    */
/* DATA LIST FREE /VAR (A20).   |                                        |   |new_var|                                    */
/* BEGIN DATA                   | %utl_psppbeginx;                       |   +-------+                                    */
/* "part1?part2"                | parmcards4;                            |   |part1  |                                    */
/* END DATA.                    | DATA LIST FREE /VAR (A20).             |   +-------+                                    */
/*                              | BEGIN DATA                             |                                                */
/*                              | "part1?part2"                          |                                                */
/*                              | END DATA.                              |                                                */
/*                              |                                        |                                                */
/*                              | STRING new_var (A200).                 |                                                */
/*                              | COMPUTE pos_question=index(VAR, "?").  |                                                */
/*                              | DO IF (pos_question > 0).              |                                                */
/*                              |     COMPUTE new_var=SUBSTR(            |                                                */
/*                              |       VAR, 1, pos_question - 1).       |                                                */
/*                              | ELSE.                                  |                                                */
/*                              |     COMPUTE new_var = VAR.             |                                                */
/*                              | END IF.                                |                                                */
/*                              | EXECUTE.                               |                                                */
/*                              |                                        |                                                */
/*                              | * Display results.                     |                                                */
/*                              | LIST VAR new_var.                      |                                                */
/*                              | ;;;;                                   |                                                */
/*                              | %utl_psppendx;                         |                                                */
/*                              |                                        |                                                */
/*                              |                                        |                                                */
/*                              |-----------------------------------------------------------------------------------------*/
/*                              |                                        |                                                */
/* data have;                   |2 THE SAS PROGRAM                       | NEW_VAR=part1                                  */
/*  var="part1?part2";          |=================                       |                                                */
/* run;quit;                    |data want;                              |                                                */
/*                              |length new_var $ 200;                   |                                                */
/*                              |VAR="part1?part2";                      |                                                */
/*                              |if index(var,'?')>0 then                |                                                */
/*                              |  new_var = scan(var,1,'?');            |                                                */
/*                              |else new_var=var;                       |                                                */
/*                              |put new_var=;                           |                                                */
/*                              |run;quit;                               |                                                */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
