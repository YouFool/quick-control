package utilitarios;

public class GeradorNavBar {

	/**
	 * Não foi implantado
	 * @return
	 */
	public static String gerarNavBar() {
		
		String navbar = "double grana = s.receberSaldoDouble(u.id);\r\n" + 
				"	        if(grana<0){\r\n" + 
				"	        	out.print(\"<a class='red-text'>\" + Formatadores.formatarSaldoDouble(grana) + \"</a>\");\r\n" + 
				"	        }else{\r\n" + 
				"	        	out.print(\"<a class='green-text'>\" + Formatadores.formatarSaldoDouble(grana) + \"</a>\");        	\r\n" + 
				"	        }";
		
		return navbar;
		
	}
	
}
