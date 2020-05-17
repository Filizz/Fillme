# Fillme
[20160808029] Filiz YARAŞLIOĞLU
[20170808002] Melin SEYFETTİNOĞLU

We decided the name of our programming language as "Fillme".
We have given this name to our programming language, based on our own names (Filiz & Melin), as it also complies with its purpose.
Fillme is a Linüx based programming system.
We think it is a programming language used in applications such as object recognition and detection systems and counting systems.
For example, on shopping sites, we ask us to indicate which bank credit cards belong to, and we can provide this with "Fillme".

BNF Form

 <exp> ::= <term> "+" <exp>
         |  <term>

 <term> ::= <factor> "*" <term>
         |  <factor>

 <factor> ::= "(" <exp> ")"
           |  <const>

 <const> ::= integer

 [a-zA-Z]+	
 [0-9]* 
 [\t\n] 
 [-+=;] 
 

 Hierarchy or Steps
   • Lexical analysis (lex, flex, ...)
     ◦ Reads the source code, and generates tokens
     ◦ Each token may have attributes - property like int
   • Syntax analysis (yacc, bison, ...)
     ◦ Or parsing
     ◦ Build structure using tokens
   • Semantic analysis
   • Code generation
