%option noyywrap
%{
	#include<stdio.h>
	#include "Sample1.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return Number;}
[+*] {return yytext[0];}
[\n] {return 0;}
%%
