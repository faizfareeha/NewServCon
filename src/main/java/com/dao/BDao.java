package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Blocks;

public class BDao {

	public static List<Blocks> list(String distcode) throws SQLException {
        List<Blocks> list = new ArrayList<>();
        
        try(Connection con = ConManager.createConnection()){
        	String sql = "SELECT * FROM blocks where d_id='"+distcode +"' ORDER BY name";
        	Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                Blocks b = new Blocks(id, name);
                     
                list.add(b);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return list;
	}
}
