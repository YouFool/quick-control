package utilitarios;

import java.text.NumberFormat;
import java.time.LocalDateTime;

public class Formatadores {
	
	public static String formatarSaldoDouble(double saldo) {
		
		NumberFormat padraoBR = NumberFormat.getCurrencyInstance();//NumberFormat padrao brasileiro
        String s = padraoBR.format(saldo);
		return s;
		
	}
	
	//Método inutilizado, provável remoção
	public static String formatarSaldoString(String saldo) {
		
		NumberFormat padraoBR = NumberFormat.getCurrencyInstance();//NumberFormat padrao brasileiro
		padraoBR.format(saldo);
		return saldo;
		
	}
	
	public static String formatarData(String dataFormatar) {
		String formatada = String.valueOf(LocalDateTime.parse(dataFormatar));
		return formatada;
	}
	
}
