package pacote;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import utilitarios.Formatadores;

public class Movimentacoes{
	
	//Lista de movimentaçoes
	private ArrayList<String> listaMovimentos;
	
	//Recebe a lista de movimentações
	public ArrayList<String> getListaMovimentos() {
		return listaMovimentos;
	}
	
	//Cadastrar novo lançamento
	public String Lancamento(int idUsuario, String nomeConta, String categoriaConta, String valor, String observacoes, String data) {
		
		
		String msg = null;
		
	 try {
			
			//SQL
			String sql = "INSERT INTO movimentacoes(idUsuario, nomeConta, categoriaConta, valor, observacoes, data) VALUES (?,?,?,?,?,?)";
			
			//PreparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			
			//Parâmetros
			pstmt.setInt(1, idUsuario);
			pstmt.setString(2, nomeConta);
			pstmt.setString(3, categoriaConta);
			pstmt.setDouble(4, Double.parseDouble(valor));
			pstmt.setString(5, observacoes);
			pstmt.setString(6, data);
			
			//validaFormulario();
			
			//Executar
			pstmt.execute();
			
			msg = "ok";
			
	 }catch(Exception e) {
		 
			msg = "Falha: "+e.getMessage();
			
	 }
	 
	 return msg;

	}
	 
    public StringBuilder listaMovimentosArray(int idUsuario, String dataInicio, String dataFim){
        
        // SQL
        String sql = "SELECT * FROM movimentacoes WHERE idUsuario=? AND data BETWEEN ? AND ? ORDER BY data ASC";
        StringBuilder builder = null;
        
        try {

            // PraparedStatement
            PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
            pstmt.setInt(1, idUsuario);
            pstmt.setString(2, dataInicio);
            pstmt.setString(3, dataFim);
            
            // Executar
            ResultSet rs = pstmt.executeQuery();
            StringBuilder sb = new StringBuilder();
            
            while (rs.next()) {

            	sb.append("<tr>");
            	sb.append("<td>" + rs.getString("nomeConta") + "</td>");
            	sb.append("<td>" + rs.getString("categoriaConta") + "</td>");
            	sb.append("<td>" + rs.getString("valor") + "</td>");
            	sb.append("<td>" + rs.getString("observacoes" + "</td>"));
            	sb.append("<td>" + rs.getString("data") + "</td>");
            	sb.append("<td>");
            	sb.append("<button id='but' onclick=\"removeRegistro('");
            	sb.append(rs.getString("nomeConta") + "', '");
            	sb.append(rs.getString("categoriaConta") + "', '");
            	sb.append(rs.getString("valor") + "', '");
            	sb.append(rs.getString("observacoes") + "', '");
            	sb.append(rs.getString("data"));
            	sb.append("')\"><i class='little material-icons'>delete</i></button>");
            	sb.append("</td>");
            	sb.append("</tr>");
            }
            
            sb.append("<p>");
            sb.append("O resultado de ");
            sb.append(dataInicio);
            sb.append(" até ");
            sb.append(dataFim);
            sb.append(" é: ");
            sb.append(Formatadores.formatarSaldoString(totalMovimentacoes(idUsuario, dataInicio, dataFim)));
            sb.append("</p>");
            
            System.out.println(sb.toString());
            builder = sb;

        } catch (Exception e) {
        	e.getMessage();
        }
        
        return builder;
    }
    
	public ArrayList<String> receberListaMovimentos(int idUsuario, String dataInicio, String dataFim) {
		
		String sql = "SELECT * FROM movimentacoes WHERE idUsuario=? AND data BETWEEN ? AND ? ORDER BY data ASC";
		ArrayList<String> dados = new ArrayList<>();
		
		try {
			// PraparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			pstmt.setString(2, dataInicio);
			pstmt.setString(3, dataFim);
			
			// Executar
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				dados.add("<tr>");
				dados.add("<td>" + rs.getString("nomeConta") + "</td>");
				dados.add("<td>" + rs.getString("categoriaConta") + "</td>");
				dados.add("<td>" + rs.getString("valor") + "</td>");
				dados.add("<td>" + rs.getString("observacoes") + "</td>");
				dados.add("<td>" + rs.getString("data") + "</td>");
				dados.add("<td>");
				dados.add("<button id='but' onclick=\"removeRegistro('");
				dados.add(rs.getString("nomeConta") + "', '");
				dados.add(rs.getString("categoriaConta") + "', '");
				dados.add(rs.getString("valor") + "', '");
				dados.add(rs.getString("observacoes") + "', '");
				dados.add(rs.getString("data"));
				dados.add("')\"><i class='little material-icons'>delete</i></button>");
				dados.add("</td>");
				dados.add("</tr>");
			}
			
		} catch (Exception e) {
			e.getMessage();
		}
		
		listaMovimentos = dados;
		return dados;
	}
    
    public String listaMovimentos(int idUsuario, String dataInicio, String dataFim){
        
        // SQL
        String sql = "SELECT * FROM movimentacoes WHERE idUsuario=? AND data BETWEEN ? AND ? ORDER BY data ASC";
        
        String retorno = "";

        try {

            // PraparedStatement
            PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
            pstmt.setInt(1, idUsuario);
            pstmt.setString(2, dataInicio);
            pstmt.setString(3, dataFim);
            
            // Executar
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {

            	retorno += "<tr><td>" + rs.getString("nomeConta") + "</td>"
    			+ "<td>" + rs.getString("categoriaConta") + "</td>" 
    			+ "<td>" + rs.getDouble("valor") + "</td>" 
    			+ "<td>" + rs.getString("observacoes") + "</td>" 
    			+ "<td>" + rs.getString("data") + "</td>"
    			+ "<td>" + "<button id='but' onclick=\"removeRegistro('" 
    			+ rs.getString("nomeConta") + "', '"
                + rs.getString("categoriaConta") + "', " 
                + rs.getDouble("valor") + ", '"
                + rs.getString("observacoes") + "', '"
                + rs.getString("data")
                + "')\"><i class='little material-icons'>delete</i></button>" + "</td></tr>";
               
            }
            
            retorno += "<p>O resultado de "+dataInicio+" até "+dataFim+" é: R$ "+totalMovimentacoes(idUsuario, dataInicio, dataFim)+ "</p>";
            System.out.println(retorno);

        } catch (Exception e) {
           retorno = "Falha" + e.getMessage();
        }
        
        return retorno;
    }
    
    public String totalMovimentacoes(int idUsuario, String dataInicio, String dataFim) {
		
    	String sql = "SELECT SUM(valor) FROM movimentacoes WHERE idUsuario=? AND data BETWEEN ? AND ?";
    	
    	String retorno = "";
    	
    	try {
			// PreparedStatement
    		PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);
    		pstmt.setInt(1, idUsuario);
    		pstmt.setString(2, dataInicio);
    		pstmt.setString(3, dataFim);
    		
    		//Executar
    		ResultSet rs = pstmt.executeQuery();
    		
    		while (rs.next()) {
				retorno=rs.getString(1);
			}
    		
		} catch (Exception e) {
			retorno = "Falha" + e.getMessage();
		}
    	
    	return retorno;
    	
	}
    
    public String Excluir(int idUsuario, String nomeConta, String categoriaConta, double valor, String observacoes,
			String data) {

	
		String msg = null;

		try {

			// SQL
			 String sql = "delete from movimentacoes where idUsuario = " + idUsuario + " " + "and nomeConta = '"
					+ nomeConta + "' and categoriaConta = '" + categoriaConta + "'"
					+ " and valor = " + valor + " and observacoes = '" + observacoes + "' "
							+ "and data = '" + data + "'";

			// PreparedStatement
			PreparedStatement pstmt = Conexao.conexao().prepareStatement(sql);

			// validaFormulario();

			// Executar
			pstmt.execute();

			msg = "ok";

		} catch (Exception e) {

			msg = "falha " + e.getMessage();

		}

		return msg;

	}
}