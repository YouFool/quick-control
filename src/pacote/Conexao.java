package pacote;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	//Método de conexão
	public static Connection conexao() {
		
		Connection c = null;
		
		try {
			//Selecionar o driver do banco de dados
			Class.forName("com.mysql.jdbc.Driver");
			
			//Realizar a conexão
			c = DriverManager.getConnection("jdbc:mysql://localhost/egjm","root","");
		}catch(Exception e) {
		}
		
		return c;
		
	}
	
}
