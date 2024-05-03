%{
#include<stdio.h>
%}
%%
(Destiny)               {printf("Noun:%s\n",yytext);}
(Dread|Run|arrives)     {printf("verb:%s\n",yytext);}
(it)                    {printf("pronoun:%s\n",yytext);}
(from)                  {printf("preposition:%s\n",yytext);}
(same)                  {printf("adjective:%s\n",yytext);}
(all|the)               {printf("Determiner/article:%s\n",yytext);}
[^ \t\n]+               {printf("Did not recognize: %s\n", yytext); }
[\t\n]+ 
%%
int yywrap(void){
    return 1;
}
int main(){
yyin=fopen("abc.txt","r");
yylex();
fclose(yyin);
return 0;
}