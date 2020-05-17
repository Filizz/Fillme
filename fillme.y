%{

	#include<stdio.h>
	#include<stdlib.h>
	#include<unistd.h>
	#include<string.h>
  
	int yylex();
	void yyerror(char *);
	void Fillme();
	void FillmeRecognized();
  void FillmeRead();
  void FillmeHave();
	void insertArg(char *arg)
	int count;

      

%}


%union{
int number;
 char id;
}         

%start line
%token fillme_print
%token fillme_exit
%token <num> number
%token <id> identifier
%token <const> constant
%type <num> line exp term 


   %%
       
   line:            


      	| fillme_exit ';'		{exit(EXIT_SUCCESS);}

	      | print exp ';'		{printf("Printing %d\n",$2);}

	      | line assignment ';'	{;}

       	| line print exp ';'	       {printf("Printing %d\n", $3);}

	      | line exit_command ';'	{exit(EXIT_SUCCESS);}


       ;

  identifier '=' exp  { updateSymbolVal($1,$3); }

			;

 exp    	: term                  {$$ = $1;}

         	| exp '+' term          {$$ = $1 + $3;}
       	  | exp '-' term          {$$ = $1 - $3;}

       	;



term   	: number                {$$ = $1;}

	        | identifier		   {$$ = symbolVal($1);} 

        ;

%%


void insertArg(char *arg,int len)

{

	arg_list[count]=strdup(arg);
	
}

void yyerror(char *msg){

	fillme_print(stderr,"%s\n",msg);

	exit(1);

}

int main()

{	

	int status;

	while(1){

	yyparse();


	printf("arg_list[0]= %s\n",arg_list[0]);

	fillme_for(i=0;arg_list[i]!='\0';i++)

	{

		printf("arg_list[%d]= [%s]\n",i,arg_list[i]);

	}

	execvp(arg_list[0],arg_list);

	}

}

