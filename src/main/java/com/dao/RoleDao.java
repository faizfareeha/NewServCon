package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;
import com.bean.UserRole;

public class RoleDao {

	public static List<UserRole> list() throws SQLException {
        List<UserRole> listRole = new ArrayList<>();
        
        try(Connection con = ConManager.createConnection()){
        	String sql = "SELECT * FROM usr_role ORDER BY role_id";
        	Statement statement = con.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                int id = result.getInt("role_id");
                String name = result.getString("role_name");
                UserRole ur = new UserRole(id, name);
                     
                listRole.add(ur);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return listRole;
	}
}
