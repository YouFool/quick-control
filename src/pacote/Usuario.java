package pacote;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JOptionPane;

public class Usuario {
	
	//Verificar email
	public boolean verificarEmail(String email) {

		boolean valida = false;

		// SQL
		String sql = "SELECT email FROM login WHERE email = ?";

		try {

			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

			// Parâmetros(IGUAL DO BANC0)
			pstmt.setString(1, email);


			// Executar
			ResultSet rs = pstmt.executeQuery();
				
			while (rs.next()) {
				valida = true;
			}
				
	
			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, "Erro ao logar!");

			}

			return valida;

			
		}

	// Cadastrar Usuário
	public String cadastrarUsuario(String nomeSobrenome, String email, String senha) {

		String msg = null;

		try {

			// SQL
			String sql = "INSERT INTO login (nomeSobrenome, email, senha) VALUES (?, ?, ?)";

			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

			// Parâmetros(IGUAL DO BANC0)
			pstmt.setString(1, nomeSobrenome);
			pstmt.setString(2, email);
			pstmt.setInt(3, Integer.parseInt(senha));

			validaFormulario();

			// Executar
			pstmt.execute();

		
		} catch (Exception e) {

			msg = "Falha " + e.getMessage();

		}

		return msg;

	}

	private void validaFormulario() {
		// TODO Auto-generated method stub

	}

}
