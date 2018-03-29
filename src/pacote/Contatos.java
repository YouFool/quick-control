package pacote;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JOptionPane;

public class Contatos {

	// Cadastrar Contato
	public String cadastrarContato(int idUsuario, String nome, String telefone, int natureza, Double valor) {

		String msg = null;

		try {

			// SQL
			String sql = "INSERT INTO contatos(idUsuario, nome, telefone, natureza, valor) VALUES (?, ?, ?, ?, ?)";

			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

			// Parametros(IGUAL DO BANC0)
			pstmt.setInt(1, idUsuario);
			pstmt.setString(2, nome);
			pstmt.setString(3, telefone);
			pstmt.setInt(4, natureza);
			pstmt.setDouble(5, valor);

			// Executar
			pstmt.execute();

			msg = "ok ";

		} catch (Exception e) {

			msg = "Falha " + e.getMessage();

		}

		return msg;

	}

	// Excluir Contato
	public String excluirContato(int idUsuario, String nome, String telefone, int natureza, Double valor) {

		String msg = null;

		try {

			// SQL
			String sql = "DELETE FROM contatos WHERE idUsuario = " + idUsuario + " and nome = '" + nome
					+ "' and telefone = '" + telefone + "' and  natureza = " + natureza + " and valor = " + valor + "";

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

	public String listaContatos(int idUsuario) {

		// SQL
		String sql = "SELECT * FROM contatos WHERE idUsuario=?";

		String retorno = "";

		try {

			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			// Executar
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String natureza = "";
				if (rs.getInt("natureza") == 1) {
					natureza = "Divida";
				} else {
					natureza = "Receber";
				}
				retorno += "<tr><td>" + rs.getString("nome") + "</td>" 
						+ "<td>" + rs.getString("telefone") + "</td>"
						+ "<td>" + natureza + "</td>" 
						+ "<td>" + rs.getDouble("valor") + "</td>"
						+ "<td><button id='but' onclick=\"removeRegistro('" + rs.getString("nome") + "', '"
						+ rs.getString("telefone") + "', " + rs.getDouble("natureza") + ", " + rs.getDouble("valor")
						+ ")\"><i class=\"little material-icons\">delete</i></button></td></tr>";
			}

		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro ao busca movimentacoes!");

		}
		return retorno;
	}
}
