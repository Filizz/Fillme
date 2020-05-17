%{


#include "y.tab.h"


%}


%option lex-compat


%x KEY VALUE


%%

LETTER [a-zA-Z]+	      return identifier;
DIGIT [0-9]*                               return number;
[ \t\n]                    ;
[-+=;]                     return yytext[0];



int                     {return  fillme_int }
float                   {return  fillme_float }
double                  {return  fillme_double }
for                     {return  fillme_for }
do                      {return  fillme_do }
while                   {return  fillme_while }
boolean                 {return  fillme_boolean }
var                     {return  fillme_var }
set                     {return  fillme_set }
read                    {return  fillme_read }
print                   {return  fillme_print }
if                      {return  fillme_if }
return                  {return  fillme_return }


\{				return OBJECT_BEGIN;

\}				return OBJECT_END;

\[				return ARRAY_BEGIN;

\]				return ARRAY_END;

\,				return COMMA;

<<Welcome       return PROJECT_START
>>Goodbye       return PROJECT_END

			

%%

