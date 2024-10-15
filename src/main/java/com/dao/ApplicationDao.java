package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.ApplicationDetails;

public class ApplicationDao {

	public static void appForm(ApplicationDetails ad) throws SQLException{
		
		Connection con = ConManager.createConnection();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO app_form (con_type, app_id, ltht_supp, mob_no, email_id, house_no, street, addr1, addr2, addr3, city, pin, district, block, panchayat, village, division, sub_div, section, tariff, phase_val, load_val, gender, appl_name, fh_name, id_proof_type, id_proof_file, addr_proof_type, addr_proof1, addr_proof2, appl_photo, ownship_photo1, ownship_photo2, status)"+"VALUES('"+ad.getCon_type()+"','"+ad.getApp_id()+"','"+ad.getLtht_supp()+"','"+ad.getMob_no()+"','"+ad.getEmail_id()+"','"+ad.getHouse_no()+"','"+ad.getStreet()+"','"+ad.getAddress1()+"','"+ad.getAddress2()+"','"+ad.getAddress3()+"','"+ad.getCity()+"','"+ad.getPin()+"','"+ad.getDistrict()+"','"+ad.getBlock()+"','"+ad.getPanchayat()+"','"+ad.getVillage()+"','"+ad.getDivision()+"','"+ad.getSub_div()+"','"+ad.getSection()+"','"+ad.getTariff()+"','"+ad.getPhase_val()+"','"+ad.getLoad_val()+"','"+ad.getGender()+"','"+ad.getAppl_name()+"','"+ad.getFh_name()+"','"+ad.getId_proof_type()+"','"+ad.getId_proof_file()+"','"+ad.getAddr_proof_type()+"','"+ad.getAddr_proof1()+"','"+ad.getAddr_proof2()+"','"+ad.getAppl_photo()+"','"+ad.getOwnship_photo1()+"','"+ad.getOwnship_photo2()+"','"+ad.getStatus()+"')";
		stmt.executeUpdate(sql);
		System.out.println("Applicant data has been inserted into database");
		
	}
	
	public static boolean checkAid(int applid) {
	    try {
	    	Connection con = ConManager.createConnection();
	        String query = "SELECT COUNT(*) FROM app_form WHERE app_id = ?";
	        PreparedStatement preparedStatement = con.prepareStatement(query);
	        preparedStatement.setInt(1,applid);

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
	
	public static boolean checkForDuplicateApplication(String appId) throws SQLException {
	    boolean isDuplicate = false;

	        // Establish a database connection (replace with your connection details)
	    	Connection con = ConManager.createConnection();

	        // Prepare a SQL query to check for the existence of the application ID
	        String sql = "SELECT COUNT(*) FROM app_form WHERE app_id = ?";
	        PreparedStatement preparedStatement = con.prepareStatement(sql);
	        preparedStatement.setString(1, appId);

	        // Execute the query
	        ResultSet resultSet = preparedStatement.executeQuery();

	        if (resultSet.next()) {
	            int count = resultSet.getInt(1);
	            if (count > 0) {
	                isDuplicate = true; // Application ID already exists
	            }
	        }
	    return isDuplicate;
	}
	
    public List<ApplicationDetails> getAllApplicationDetails(String division) throws SQLException {
        List<ApplicationDetails> applicationDetailsList = new ArrayList<>();

        	Connection connection = ConManager.createConnection();

            String query = "select *, subdiv.name AS subdiv_name, section.name AS section_name, blocks.name as block_name, panchayat.name as panchayat_name, vil_ward.name as village_name from app_form inner join division on app_form.division=division.div_id inner join subdiv on app_form.sub_div=subdiv.id inner join section on app_form.section=section.id inner join district on app_form.district=district.d_id inner join blocks on app_form.block=blocks.id inner join panchayat on app_form.panchayat=panchayat.id inner join vil_ward on app_form.village=vil_ward.id where status = 'Not Verified' and div_name = ?"; // Replace with your SQL query
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, division);
            ResultSet resultSet = preparedStatement.executeQuery();

            // Iterate through the result set and create ApplicationDetails objects
            while (resultSet.next()) {
                ApplicationDetails applicationDetails = new ApplicationDetails();
                applicationDetails.setApp_id(resultSet.getInt("app_id"));
                applicationDetails.setCon_type(resultSet.getString("con_type"));
                applicationDetails.setLtht_supp(resultSet.getString("ltht_supp"));
                applicationDetails.setMob_no(resultSet.getString("mob_no"));
                applicationDetails.setEmail_id(resultSet.getString("email_id"));
                applicationDetails.setHouse_no(resultSet.getString("house_no"));
                applicationDetails.setStreet(resultSet.getString("street"));
                applicationDetails.setAddress1(resultSet.getString("addr1"));
                applicationDetails.setAddress2(resultSet.getString("addr2"));
                applicationDetails.setAddress3(resultSet.getString("addr3"));
                applicationDetails.setCity(resultSet.getString("city"));
                applicationDetails.setPin(resultSet.getString("pin"));
                applicationDetails.setDistrict(resultSet.getString("d_name"));
                applicationDetails.setBlock(resultSet.getString("block_name"));
                applicationDetails.setPanchayat(resultSet.getString("panchayat_name"));
                applicationDetails.setVillage(resultSet.getString("village_name"));
                applicationDetails.setDivision(resultSet.getString("div_name"));
                applicationDetails.setSub_div(resultSet.getString("subdiv_name"));
                applicationDetails.setSection(resultSet.getString("section_name"));
                applicationDetails.setTariff(resultSet.getString("tariff"));
                applicationDetails.setPhase_val(resultSet.getString("phase_val"));
                applicationDetails.setLoad_val(resultSet.getString("load_val"));
                applicationDetails.setGender(resultSet.getString("gender"));
                applicationDetails.setAppl_name(resultSet.getString("appl_name"));
                applicationDetails.setFh_name(resultSet.getString("fh_name"));
                applicationDetails.setId_proof_type(resultSet.getString("id_proof_type"));
                applicationDetails.setId_proof_file(resultSet.getString("id_proof_file"));
                applicationDetails.setAddr_proof_type(resultSet.getString("addr_proof_type"));
                applicationDetails.setAddr_proof1(resultSet.getString("addr_proof1"));
                applicationDetails.setAddr_proof2(resultSet.getString("addr_proof2"));
                applicationDetails.setAppl_photo(resultSet.getString("appl_photo"));
                applicationDetails.setOwnship_photo1(resultSet.getString("ownship_photo1"));
                applicationDetails.setOwnship_photo2(resultSet.getString("ownship_photo2"));
                applicationDetails.setStatus(resultSet.getString("status"));

                applicationDetailsList.add(applicationDetails);
            }

        return applicationDetailsList;
    }
    
    public static String getVeriStatus(int appid) throws SQLException {
    	Connection con = ConManager.createConnection();
    	String sql = "SELECT status FROM app_form WHERE app_id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, appid);
        ResultSet rs = ps.executeQuery();
        if(rs.next())
        	return rs.getString("status");
        return null;
    }
    
    public static int getAppId(int appid) throws SQLException {
    	Connection con = ConManager.createConnection();
    	String sql = "SELECT app_id FROM app_form WHERE app_id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, appid);
        ResultSet rs = ps.executeQuery();
        if(rs.next())
        	return rs.getInt("app_id");
        return 0;
    }
    
    public static boolean updateVerificationStatus(String applicationId) throws SQLException {
    	    boolean success = false;
            // Initialize database connection
    		Connection connection = ConManager.createConnection(); // You need to implement DatabaseConnectionFactory

            // Define the SQL update statement
            String sql = "UPDATE app_form SET status = 'Verified' WHERE app_id = ?";

            // Create a prepared statement
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, applicationId);
            
            // Execute the update statement
            int rowsAffected = statement.executeUpdate();

            // Check if the update was successful
            if (rowsAffected > 0) {
                success = true;
            }
            return success;
    }
}
