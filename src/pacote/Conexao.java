package pacote;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	//M�todo de conex�o
	public static Connection conexao() {
		
		Connection c = null;
		
		try {
			//Selecionar o driver do banco de dados
			Class.forName("com.mysql.jdbc.Driver");
			
			//Realizar a conex�o
			c = DriverManager.getConnection("jdbc:mysql://localhost/egjm","root","");
		}catch(Exception e) {
		}
		
		return c;
		
	}
	
}
