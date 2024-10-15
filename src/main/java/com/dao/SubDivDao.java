package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Subdivisions;

public class SubDivDao {

	public static List<Subdivisions> list(String divcode) throws SQLException {
        List<Subdivisions> list = new ArrayList<>();
        
        try(Connection con = ConManager.createConnection()){
        	String sql = "SELECT * FROM subdiv where div_id='"+divcode +"' ORDER BY name";
        	Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                Subdivisions sd = new Subdivisions(id, name);
                     
                list.add(sd);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return list;
	}
}
