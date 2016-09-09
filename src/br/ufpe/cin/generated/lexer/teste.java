package br.ufpe.cin.generated.lexer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

public class teste {
	public static void main (String[]args) throws IOException{
		FileInputStream teste = new FileInputStream("teste.txt");
		ANTLRInputStream input = new ANTLRInputStream(teste);
		gramaticaLexer lexer = new gramaticaLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		gramaticaParser parser = new gramaticaParser(tokens);
		ParseTree tree = parser.resultado();
	}
}
