parser: y.tab.c lex.yy.c
	gcc -o parser y.tab.c
y.tab.c: CS315f20_team06.yacc
	yacc CS315f20_team06.yacc
lex.yy.c: CS315f20_team06.lex
	lex CS315f20_team06.lex
clean:
	rm -f lex.yy.c y.tab.c parser