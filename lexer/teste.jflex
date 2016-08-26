package br.ufpe.cin.generated.lexer;

%%

/* 
A linha atual pode ser acessada por yyline 
e a coluna atual com yycolumn. 
*/ 
%line
%column

/* Se quisermos 'interfacear' com um parser gerado pelo sistema CUP
%cup
*/ 

//encoding
%unicode

// faz com que a classe tenha uma função main e torna possivel que a classe gerada seja usada como reconhecedor
%standalone

//nomeia a classe
%class TesteLexer

/* 
Declarações

código dentro de %{ e %}, é copiado para a classe gerada. 
a ideia é utilizar este recurso para declarar atributos e métodos usados nas ações 
*/ 
%{
int qtdeID=0;
%}


%eof{
System.out.println("Quantidade de Identificadores encontrados: "+qtdeID);
%eof}

/*-*
 * PADROES NOMEADOS:
 */
letter          = [A-Za-z]
digit           = [0-9]
integer         = {digit}+
alphanumeric    = {letter}|{digit}
identifier      = ({letter}|[_])({alphanumeric}|[_])*
LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
whitespace = {LineTerminator} | [ \t\f]
pontuation      = [;.,=]
delimitador     = ["(" ")" "[" "]" "{" "}"]
op              = ([< "+" "-" "*" "!"]) | ([=][=]) | ([!][=])|([&][&])
comentario      = ([/][/]) | ([/][*]) | ([*][/])
intLiteral      = [1-9]({digit})*

%%
/**
 * REGRAS LEXICAS:
 */
"boolean" {System.out.println(yytext());} 
"class" {System.out.println(yytext());}
"public" {System.out.println(yytext());}
"extends" {System.out.println(yytext());}
"static" {System.out.println(yytext());}
"void" {System.out.println(yytext());}
"main" {System.out.println(yytext());}
"String" {System.out.println(yytext());}
"int" {System.out.println(yytext());}
"while" {System.out.println(yytext());}
"if" {System.out.println(yytext());}
"else" {System.out.println(yytext());}
"return" {System.out.println(yytext());}
"length" {System.out.println(yytext());}
"true" {System.out.println(yytext());}
"false" {System.out.println(yytext());}
"this" {System.out.println(yytext());}
"new" {System.out.println(yytext());}
"System.out.println" {System.out.println(yytext());}
{comentario}             { System.out.println("Comentario");}
{op}				{ System.out.println(yytext());} 
{pontuation}        {System.out.println(yytext());}
{delimitador}       {System.out.println(yytext());}
{intLiteral}        {System.out.println(yytext());}
{identifier}    { qtdeID++; System.out.println("Token ID ("+yytext()+")"); }
{integer}       { System.out.println("Token INT ("+yytext()+")"); }
{whitespace}    { /* Ignorar whitespace. */ }
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
