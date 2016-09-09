// Generated from gramatica.g4 by ANTLR 4.4
package br.ufpe.cin.generated.lexer;
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link gramaticaParser}.
 */
public interface gramaticaListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link gramaticaParser#op2}.
	 * @param ctx the parse tree
	 */
	void enterOp2(@NotNull gramaticaParser.Op2Context ctx);
	/**
	 * Exit a parse tree produced by {@link gramaticaParser#op2}.
	 * @param ctx the parse tree
	 */
	void exitOp2(@NotNull gramaticaParser.Op2Context ctx);
	/**
	 * Enter a parse tree produced by {@link gramaticaParser#op1}.
	 * @param ctx the parse tree
	 */
	void enterOp1(@NotNull gramaticaParser.Op1Context ctx);
	/**
	 * Exit a parse tree produced by {@link gramaticaParser#op1}.
	 * @param ctx the parse tree
	 */
	void exitOp1(@NotNull gramaticaParser.Op1Context ctx);
	/**
	 * Enter a parse tree produced by {@link gramaticaParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(@NotNull gramaticaParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link gramaticaParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(@NotNull gramaticaParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link gramaticaParser#resultado}.
	 * @param ctx the parse tree
	 */
	void enterResultado(@NotNull gramaticaParser.ResultadoContext ctx);
	/**
	 * Exit a parse tree produced by {@link gramaticaParser#resultado}.
	 * @param ctx the parse tree
	 */
	void exitResultado(@NotNull gramaticaParser.ResultadoContext ctx);
	/**
	 * Enter a parse tree produced by {@link gramaticaParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(@NotNull gramaticaParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link gramaticaParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(@NotNull gramaticaParser.ExprContext ctx);
}