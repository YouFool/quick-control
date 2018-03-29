package pacote;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class Eventos {


		//Cadastrar Usuário
		public String cadastrarEvento(int idUsuario, String evento, Double valor, String data) {
		
			String msg = null;
		
			
			try {
				
			    //SQL
				String sql = "INSERT INTO eventos (idUsuario, evento, valor, data) VALUES (?, ?, ?, ?)";
				
				//PraparedStatement
				PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
				
				//Parâmetros(IGUAL DO BANC0)
				pstmt.setInt(1, idUsuario);
				pstmt.setString(2, evento);
				pstmt.setDouble(3,valor);
				pstmt.setString(4, data);
				
				
				//Executar
				pstmt.execute();
				
				msg = "ok";
				
			}catch(Exception e) {
				
				JOptionPane.showMessageDialog(null, e.getMessage()+" esse "+evento);
				
			}
			
			return msg;
			
		}
		     

		//Listar eventos
		public String listaEventos(int idUsuario) {

			// SQL
			String sql = "SELECT * FROM eventos WHERE idUsuario = ?";

			String retorno = "";

			try {

				// PraparedStatement
				PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
				pstmt.setInt(1, idUsuario);
				
				// Executar
				ResultSet rs = pstmt.executeQuery();
				
				while (rs.next()) {
					retorno += "<tr><td>" + rs.getString("data") + "</td>" + "<td>" + rs.getString("evento") + "</td>"
						    + "<td>" + rs.getDouble("valor") + "</td>"
							+ "<td><button id='but' onclick=\"removeRegistro('" + rs.getString("data") + "', '"
							+ rs.getString("evento")  + "' , " + rs.getDouble("valor")
							+ ")\"><i class=\"little material-icons\">delete</i></button></td></tr>";
				}

			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, e.getMessage());

			}
			return retorno;
		}
		
		// Excluir evento
		public String excluirEvento(int idUsuario, String data, String evento, Double valor) {

			String msg = null;

			try {
				

				// SQL
				String sql = "DELETE FROM eventos WHERE idUsuario = " + idUsuario + " and evento = '" + evento
						+ "' and valor = " + valor  + " and data = '" + data + "'";

				// PraparedStatement
				PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

				// Executar
				 pstmt.execute();

				msg = " ok ";

			} catch (Exception e) {

				msg = "Falha " + e.getMessage();

			}

			return msg;

		}
		
	}
