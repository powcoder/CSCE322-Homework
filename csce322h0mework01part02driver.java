https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
import java.io.IOException;
import org.antlr.v4.runtime.*;

public class csce322h0mework01part02driver{
    public static void main(String args[])
    {
	CharStream input = null;
	if( args.length == 1 )
	    {
		try {
		    input = CharStreams.fromFileName(args[0]);
		} catch (IOException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
	    }
	else
	    {
		System.err.println( "File Not Provided" );
		System.exit(0);
	    }
	
	csce322h0mework01part02Lexer lexer = new csce322h0mework01part02Lexer( input );
	CommonTokenStream tokens = new CommonTokenStream( lexer );
	csce322h0mework01part02Parser parser = new csce322h0mework01part02Parser( tokens );
	lexer.removeErrorListeners();
	parser.removeErrorListeners();
	lexer.addErrorListener( new csce322h0mework01part02error() );
	parser.addErrorListener( new csce322h0mework01part02error() );
	parser.uno();
    }
}
