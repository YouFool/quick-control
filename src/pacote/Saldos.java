package pacote;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Saldos {

	double saldo;

	//	Exibir o saldo atual
	public String receberSaldo(int idUsuario) {
		
		String msg = "";
		
		String sql = "SELECT saldo FROM saldos WHERE idUsuario=?";
		
		try {
			
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				msg=rs.getString(1);
			}
			
		} catch (Exception e) {
			msg="Falha: "+e.getMessage();
		}
		
		
		return msg;
		
	}
	
//	Atualizar o saldo
	public String atualizarSaldo(String saldo, int idUsuario) {
		
		String msg = "";
		
		String sql = "UPDATE saldos SET saldo=saldo+? WHERE idUsuario=?";
		
		try {
			//PSTMT
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			
			pstmt.setDouble(1, Double.parseDouble(saldo));
			pstmt.setInt(2, idUsuario);
			pstmt.execute();
			
			msg="Saldo atualizado com sucesso!";
			
		} catch (SQLException e) {
			msg = "Falha "+e.getMessage();
		}
		
		
		return msg;
		
	}
	
//	Criar conta com saldo zerado
	public String criarConta(int idUsuario) {
		
		String msg = "";
		
		String sql = "INSERT INTO saldos(idUsuario, saldo) VALUES (?,0)";
		
		try {
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			pstmt.execute();
			
			msg = "Conta criada com sucesso!";
			
		} catch (Exception e) {
			msg = "Falha: "+e.getMessage();
		}
		
		return msg;
		
	}
	
//	Exibir o saldo atual
	public double receberSaldoDouble(int idUsuario) {
		
		double saldo = 0;
		
		String sql = "SELECT saldo FROM saldos WHERE idUsuario=?";
		
		try {
			
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				saldo+=rs.getDouble(1);
			}
			
		} catch (Exception e) {
			System.err.println("Falha: "+e.getMessage());
		}
		
		
		return saldo;
		
	}
}
