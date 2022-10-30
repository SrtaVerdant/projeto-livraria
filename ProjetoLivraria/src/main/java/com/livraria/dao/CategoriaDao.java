package com.livraria.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.livraria.bean.Categoria;
import com.livraria.bean.Livro;

public class CategoriaDao {
	
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
	
	public static List<Categoria> listarCategoria() {
		List<Categoria> listcategoria = new ArrayList<Categoria>();
		
		try {
			Connection connection = getConnection();
			PreparedStatement ps = connection.prepareStatement("SELECT * FROM tbcategorias");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Categoria categoria = new Categoria();
				categoria.setNome(rs.getString("categoria"));
				listcategoria.add(categoria);
			}
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return listcategoria;
	}
	
}
