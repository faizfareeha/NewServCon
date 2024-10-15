package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Blocks;
import com.bean.Districts;
import com.bean.Panchayats;
import com.bean.UserRole;
import com.bean.Villages;


public class dbpvDao {
	

	public dbpvDao (Connection createConnection) {
		// TODO Auto-generated constructor stub
	}
	
	public static List<Districts> getDis() throws SQLException{
		List<Districts> list = new ArrayList<>();
		
		 try(Connection con = ConManager.createConnection()){
	        	PreparedStatement ps = con.prepareStatement("SELECT * FROM district");
	            ResultSet rs = ps.executeQuery();
	            
	            while (rs.next()) {
	            	Districts d = new Districts();
	            	d.setId(rs.getInt("d_id"));
	            	d.setName(rs.getString("d_name"));
	                
	                list.add(d);
	                
	            } 
	            System.out.println();
	             
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            throw ex;
	        }      
	         
	        return list;
	}
	
	public static List<Blocks> getBlk(int districtId) throws SQLException{
		List<Blocks> list = new ArrayList<>();
		
		 try(Connection con = ConManager.createConnection()){
	        	PreparedStatement ps = con.prepareStatement("SELECT * FROM blocks where d_id=?");
	        	ps.setInt(1, districtId);
	            ResultSet rs = ps.executeQuery();
	            
	            while (rs.next()) {
//	            	Blocks b = new Blocks();  //remove the constructor from blocks and uncomment the js code in application_form.jsp
//	            	b.setId(rs.getInt("id"));
//	            	b.setDistrictId(rs.getInt("d_id"));
//	            	b.setName(rs.getString("name"));
//	                
//	                list.add(b);
	                
	            } 
	            System.out.println();
	             
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            throw ex;
	        }      
	         
	        return list;
	}
	
	public static List<Panchayats> getPan(int blockId) throws SQLException{
		List<Panchayats> list = new ArrayList<>();
		
		 try(Connection con = ConManager.createConnection()){
	        	PreparedStatement ps = con.prepareStatement("SELECT * FROM panchayat where b_id=?");
	        	ps.setInt(1, blockId);
	            ResultSet rs = ps.executeQuery();
	            
	            while (rs.next()) {
//	            	Panchayats p = new Panchayats();
//	            	p.setId(rs.getInt("id"));
//	            	p.setDistrictId(rs.getInt("d_id"));
//	            	p.setBlockId(rs.getInt("b_id"));
//	            	p.setName(rs.getString("name"));
//	                
//	                list.add(p);
	                
	            } 
	            System.out.println();
	             
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            throw ex;
	        }      
	         
	        return list;
	}
	
	public static List<Villages> getVil(int panchayatId) throws SQLException{
		List<Villages> list = new ArrayList<>();
		
		 try(Connection con = ConManager.createConnection()){
	        	PreparedStatement ps = con.prepareStatement("SELECT * FROM vil_ward where p_id=?");
	        	ps.setInt(1, panchayatId);
	            ResultSet rs = ps.executeQuery();
	            
	            while (rs.next()) {
//	            	Villages v = new Villages();
//	            	v.setId(rs.getInt("id"));
//	            	v.setDistrictId(rs.getInt("d_id"));
//	            	v.setBlockId(rs.getInt("b_id"));
//	            	v.setPanchayatId(rs.getInt("p_id"));
//	            	v.setName(rs.getString("name"));
//	                
//	                list.add(v);
	                
	            } 
	            System.out.println();
	             
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            throw ex;
	        }      
	         
	        return list;
	}
}
