package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.bean.Panchayats;

public class PDao {

	public static List<Panchayats> list(String blkcode) throws SQLException {
        List<Panchayats> list = new ArrayList<>();
        
        try(Connection con = ConManager.createConnection()){
        	String sql = "SELECT * FROM Panchayat where b_id='"+blkcode +"' ORDER BY name";
        	Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                Panchayats ur = new Panchayats(id, name);
                     
                list.add(ur);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return list;
	}
	
}
