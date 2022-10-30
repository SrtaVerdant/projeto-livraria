package com.livraria.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.livraria.bean.Livro;

public class LivroDao {
	public static Connection getConnection() {
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/bdlivraria", "root", "root");
		}catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}
	
	
	public static List<Livro> listar() {
		List<Livro> list = new ArrayList<Livro>();
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM tblivros");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Livro livro = new Livro();
				livro.setCodlivro(rs.getInt("codlivro"));
				livro.setTitulo(rs.getString("titulo"));
				livro.setAutor(rs.getString("autor"));
				livro.setCategoria(rs.getString("categoria"));;
				livro.setPreco(rs.getFloat("valor"));
				list.add(livro);
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}

	public static Livro getPorId(int codlivro) {
		Livro livro = null;
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps =  connection.prepareStatement("SELECT * FROM tblivros WHERE codlivro=?");
			ps.setInt(1, codlivro);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				livro = new Livro();
				livro.setCodlivro(rs.getInt("codlivro"));
				livro.setTitulo(rs.getString("titulo"));
				livro.setAutor(rs.getString("autor"));
				livro.setCategoria(rs.getString("categoria"));
				livro.setPreco(rs.getFloat("valor"));
				
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return livro;
	}
	
	public void alterar(Livro livro) {
		try {
			Connection connection = getConnection();
			PreparedStatement ps = connection.prepareStatement("UPDATE tblivros SET titulo=?, autor=?, categoria=?, valor=? WHERE codlivro=?");
			
			ps.setString(1, livro.getTitulo());
			ps.setString(2, livro.getAutor());
			ps.setString(3, livro.getCategoria());
			ps.setFloat(4, livro.getPreco());
			ps.setInt(5, livro.getCodlivro());
			ps.execute();			
			ps.close();
			
		}catch (SQLException e) {
			throw new RuntimeException(e);
			
		}
		
	}
	
	public static List<Livro> getLivroPorCategoria(String categoria) {
		List<Livro> list = new ArrayList<Livro>();
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps =  connection.prepareStatement("SELECT * FROM tblivros WHERE categoria=?");
			ps.setString(1, categoria);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Livro livro = new Livro();
				livro.setCodlivro(rs.getInt("codlivro"));
				livro.setTitulo(rs.getString("titulo"));
				livro.setAutor(rs.getString("autor"));
				livro.setCategoria(rs.getString("categoria"));
				livro.setPreco(rs.getFloat("valor"));
				list.add(livro);
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
	
	public void adicionar(Livro livro) {
		String sql = "insert into tblivros " + "(titulo,autor,categoria,valor)" + " values(?,?,?,?)";
				
		try {
			Connection connection = getConnection();
			PreparedStatement ps =  connection.prepareStatement(sql);
			ps.setString(1, livro.getTitulo());
			ps.setString(2, livro.getAutor());
			ps.setString(3, livro.getCategoria());
			ps.setFloat(4, livro.getPreco());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static int deleta(int codlivro) {
		int status = 0;
		String sql = "DELETE FROM tblivros WHERE codlivro=?";
		try {
			Connection connection = getConnection();
			PreparedStatement ps =  connection.prepareStatement(sql);
			ps.setLong(1, codlivro);		
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			status = status + 1;
			throw new RuntimeException(e);
		}
		
		return status;
	}
	
	
	
	
	
}
