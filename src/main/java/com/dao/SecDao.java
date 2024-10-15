package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Sections;

public class SecDao {

	public static List<Sections> list(String sdcode) throws SQLException {
        List<Sections> list = new ArrayList<>();
        
        try(Connection con = ConManager.createConnection()){
        	String sql = "SELECT * FROM section where sd_id='"+sdcode +"' ORDER BY name";
        	Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                Sections s = new Sections(id, name);
                     
                list.add(s);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return list;
	}
}
