package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.UsersDetails;

public class UserDao {

public static void createUser(UsersDetails ud) throws SQLException{
		
		Connection con = ConManager.createConnection();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO usr_info(UserId,Name,Email,Mobile,Password,Role,division,subdivision,section)"+"VALUES('"+ud.getUserId()+"','"+ud.getName()+"','"+ud.getEmail()+"','"+ud.getMobile()+"','"+ud.getPwd()+"','"+ud.getRole()+"','"+ud.getDivision()+"','"+ud.getSubdivision()+"','"+ud.getSection()+"')";
		stmt.executeUpdate(sql);
		System.out.println("Values have been inserted into database");
	}
/*
 public static boolean checkUid(String userid) {
    try {
    	Connection con = ConManager.createConnection();
        String query = "SELECT COUNT(*) FROM usr_info WHERE userid = ?";
        PreparedStatement preparedStatement = con.prepareStatement(query);
        preparedStatement.setString(1,userid);

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            int count = resultSet.getInt(1);
            return count > 0;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}

public static boolean checkPwd(String userid, String password) {
    try {
    	Connection con = ConManager.createConnection();
        String query = "SELECT * FROM usr_info WHERE userid = ? AND password = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, userid);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        return rs.next();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}

 public static boolean checkEmail(String email) {
    try {
    	Connection con = ConManager.createConnection();
        String query = "SELECT COUNT(*) FROM usr_info WHERE email = ?";
        PreparedStatement preparedStatement = con.prepareStatement(query);
        preparedStatement.setString(1, email);

        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            int count = resultSet.getInt(1);
            return count > 0;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}*/

public static String getName(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT name FROM usr_info WHERE userid=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("name");
    return null;
}

public static String getEmail(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT email FROM usr_info WHERE userid=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("email");
    return null;
}

public static String getMobile(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT mobile FROM usr_info WHERE userid=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("mobile");
    return null;
}

public static String getRole(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT role FROM usr_info WHERE userid=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("role");
    return null;
}

public static String getDivision(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT division.div_name AS division_name FROM usr_info INNER JOIN division ON usr_info.Division = division.div_id WHERE UserId = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("division_name");
    return null;
}

public static String getSubdivision(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT subdiv.name FROM usr_info INNER JOIN subdiv ON usr_info.Subdivision = subdiv.id WHERE UserId = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("subdiv.name");
    return null;
}

public static String getSection(String userid) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT section.name FROM usr_info INNER JOIN section ON usr_info.Section = section.id WHERE UserId = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, userid);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    	return rs.getString("section.name");
    return null;
}

public List<UsersDetails> getAllEmpDetails(String role) throws SQLException {
    List<UsersDetails> empDetailsList = new ArrayList<>();

    	Connection connection = ConManager.createConnection();

        String query = "select *, division.div_name as division_name, subdiv.name AS subdivision_name, section.name AS section_name from usr_info inner join division on usr_info.Division=division.div_id inner join subdiv on usr_info.Subdivision=subdiv.id inner join section on usr_info.Section=section.id where role = ?"; 
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, role);
        ResultSet resultSet = preparedStatement.executeQuery();

        // Iterate through the result set and create ApplicationDetails objects
        while (resultSet.next()) {
            UsersDetails empDetails = new UsersDetails();
            empDetails.setUserId(resultSet.getString("userId"));
            empDetails.setName(resultSet.getString("name"));
            empDetails.setEmail(resultSet.getString("email"));
            empDetails.setMobile(resultSet.getString("mobile"));
            empDetails.setDivision(resultSet.getString("division_name"));
            empDetails.setSubdivision(resultSet.getString("subdivision_name"));
            empDetails.setSection(resultSet.getString("section_name"));
            empDetailsList.add(empDetails);
        }

    return empDetailsList;
}

public static boolean deleteEmployeeById(String employeeId) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "DELETE FROM usr_info WHERE role = 'Official' and userid = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, employeeId);
    int rowsAffected = ps.executeUpdate();
    return rowsAffected > 0;
}

public List<UsersDetails> getEmployeesByDivision(String division) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT *, division.div_name as division_name, subdiv.name AS subdivision_name, section.name AS section_name FROM usr_info inner join division on usr_info.Division=division.div_id inner join subdiv on usr_info.Subdivision=subdiv.id inner join section on usr_info.Section=section.id WHERE role = 'Official' and div_name = ?";
	PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, division);
    ResultSet resultSet = ps.executeQuery();
    List<UsersDetails> empDetailsList = new ArrayList<>();
    while (resultSet.next()) {
        UsersDetails empDetails = new UsersDetails();
        empDetails.setUserId(resultSet.getString("userId"));
        empDetails.setName(resultSet.getString("name"));
        empDetails.setEmail(resultSet.getString("email"));
        empDetails.setMobile(resultSet.getString("mobile"));
        empDetails.setDivision(resultSet.getString("division_name"));
        empDetails.setSubdivision(resultSet.getString("subdivision_name"));
        empDetails.setSection(resultSet.getString("section_name"));
        empDetailsList.add(empDetails);
    }
    return empDetailsList;
}

public static String getUserId(String userId) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT userid FROM usr_info WHERE userid = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ResultSet resultSet = ps.executeQuery();
	String userid = null;
	if (resultSet.next()) {
        userid = resultSet.getString("userid");
    }
	return userid;
}

public static String getUserCurrentPassword(String userId) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "SELECT password FROM usr_info WHERE userid = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ResultSet resultSet = ps.executeQuery();
	String currentPassword = null;
	if (resultSet.next()) {
        currentPassword = resultSet.getString("password");
    }
	return currentPassword;
}

public static boolean updateUserPassword(String userId, String newPassword) throws SQLException {
	Connection con = ConManager.createConnection();
	String sql = "UPDATE usr_info SET password = ? WHERE userid = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, newPassword);
    ps.setString(2, userId);
    int rowsAffected = ps.executeUpdate();
    return rowsAffected > 0;
}
}
