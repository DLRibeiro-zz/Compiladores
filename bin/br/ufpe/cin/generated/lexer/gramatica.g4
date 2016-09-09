grammar gramatica;

resultado: stat+;
stat : expr NEWLINE | expr; 
expr : expr op1 expr| expr op2 expr | NUMBER | '(' expr ')';
op1 : MULT | DIV ;
op2 : ADD | SUB;
NUMBER : [0-9]+;
MULT : '*';
ADD: '+';
DIV: '/';
SUB: '-';
ID: [a-zA-z]+;
NEWLINE: '\r'? '\n';