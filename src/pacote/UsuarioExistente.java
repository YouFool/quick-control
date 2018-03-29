package pacote;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JOptionPane;

public class UsuarioExistente {
	
	public String nome, email;
	public int senha, id;
	

	//Logar Usuário
	public boolean logarUsuario(String email, String senha) {

		boolean valida = false;

		// SQL
		String sql = "SELECT email, senha FROM login WHERE email = ? AND senha = ?";

		try {

			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

			// Parâmetros(IGUAL DO BANC0)
			pstmt.setString(1, email);
			pstmt.setInt(2, Integer.parseInt(senha));


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

	
	
	
	public UsuarioExistente receberDados(String email) {

		// SQL
		String sql = "SELECT * FROM login WHERE email = ?";
		UsuarioExistente u = new UsuarioExistente(); 
		
		try {

			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

			// Parâmetros(IGUAL DO BANC0)
			pstmt.setString(1, email);

			// Executar
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				u.id = rs.getInt(1);
				u.nome=rs.getString(2);
				u.email=rs.getString(3);
				u.senha=rs.getInt(4);
			}

		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro ao receber dados!"+e.getMessage());
		}

		return u;
	}
	
	

}
