package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ApplicationDetails;
import com.dao.ApplicationDao;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/GetAppListServlet")
public class GetAppListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAppListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		ApplicationDao dao = new ApplicationDao();
		try {
			String officialDivision = (String) session.getAttribute("divi");
			List<ApplicationDetails> applicationDetailsList = dao.getAllApplicationDetails(officialDivision);

	        request.setAttribute("applicationDetailsList", applicationDetailsList);


	        request.getRequestDispatcher("view_application.jsp").forward(request, response);
			
//			response.setContentType("text/html");
//	        PrintWriter out = response.getWriter();
//
//	        // Iterate through the list and print the values for each object
//	        out.println("<html>");
//	        out.println("<head><title>Application Details</title></head>");
//	        out.println("<body>");
//	        out.println("<h1>Application Details</h1>");
//	        out.println("<table border='1'>");
//	        out.println("<tr>");
//	        out.println("<th>Application ID</th>");
//	        out.println("<th>Connection Type</th>");
//	        out.println("<th>LT/HP Supply</th>");
//	        out.println("<th>Mobile Number</th>");
//	        out.println("<th>Email ID</th>");
//	        out.println("<th>House Number</th>");
//	        out.println("<th>Street</th>");
//	        out.println("<th>Address Line 1</th>");
//	        out.println("<th>Address Line 2</th>");
//	        out.println("<th>Address Line 3</th>");
//	        out.println("<th>City</th>");
//	        out.println("<th>Pin Code</th>");
//	        out.println("<th>District</th>");
//	        out.println("<th>Block</th>");
//	        out.println("<th>Panchayat</th>");
//	        out.println("<th>Village/Ward</th>");
//	        out.println("<th>Division</th>");
//	        out.println("<th>SubDivision</th>");
//	        out.println("<th>Section</th>");
//	        out.println("<th>Tariff</th>");
//	        out.println("<th>Phase</th>");
//	        out.println("<th>Load</th>");
//	        out.println("<th>Gender</th>");
//	        out.println("<th>Applicant Name</th>");
//	        out.println("<th>Father/Husband Name</th>");
//	        out.println("<th>ID Proof Type</th>");
//	        out.println("<th>ID Proof File</th>");
//	        out.println("<th>Address Proof Type</th>");
//	        out.println("<th>Address Proof 1</th>");
//	        out.println("<th>Address Proof 2</th>");
//	        out.println("<th>Applicant Photo</th>");
//	        out.println("<th>Ownership Photo 1</th>");
//	        out.println("<th>Ownership Photo 2</th>");
//	        out.println("<th>Status</th>");
//	        out.println("</tr>");
//
//	        for (ApplicationDetails applicationDetails : applicationDetailsList) {
//	            out.println("<tr>");
//	            out.println("<td>" + applicationDetails.getApp_id() + "</td>");
//	            out.println("<td>" + applicationDetails.getCon_type() + "</td>");
//	            out.println("<td>" + applicationDetails.getLtht_supp() + "</td>");
//	            out.println("<td>" + applicationDetails.getMob_no() + "</td>");
//	            out.println("<td>" + applicationDetails.getEmail_id() + "</td>");
//	            out.println("<td>" + applicationDetails.getHouse_no() + "</td>");
//	            out.println("<td>" + applicationDetails.getStreet() + "</td>");
//	            out.println("<td>" + applicationDetails.getAddress1() + "</td>");
//	            out.println("<td>" + applicationDetails.getAddress2() + "</td>");
//	            out.println("<td>" + applicationDetails.getAddress3() + "</td>");
//	            out.println("<td>" + applicationDetails.getCity() + "</td>");
//	            out.println("<td>" + applicationDetails.getPin() + "</td>");
//	            out.println("<td>" + applicationDetails.getDistrict() + "</td>");
//	            out.println("<td>" + applicationDetails.getBlock() + "</td>");
//	            out.println("<td>" + applicationDetails.getPanchayat() + "</td>");
//	            out.println("<td>" + applicationDetails.getVillage() + "</td>");
//	            out.println("<td>" + applicationDetails.getDivision() + "</td>");
//	            out.println("<td>" + applicationDetails.getSub_div() + "</td>");
//	            out.println("<td>" + applicationDetails.getSection() + "</td>");
//	            out.println("<td>" + applicationDetails.getTariff() + "</td>");
//	            out.println("<td>" + applicationDetails.getPhase_val() + "</td>");
//	            out.println("<td>" + applicationDetails.getLoad_val() + "</td>");
//	            out.println("<td>" + applicationDetails.getGender() + "</td>");
//	            out.println("<td>" + applicationDetails.getAppl_name() + "</td>");
//	            out.println("<td>" + applicationDetails.getFh_name() + "</td>");
//	            out.println("<td>" + applicationDetails.getId_proof_type() + "</td>");
//	            out.println("<td>" + applicationDetails.getId_proof_file() + "</td>");
//	            out.println("<td>" + applicationDetails.getAddr_proof_type() + "</td>");
//	            out.println("<td>" + applicationDetails.getAddr_proof1() + "</td>");
//	            out.println("<td>" + applicationDetails.getAddr_proof2() + "</td>");
//	            out.println("<td>" + applicationDetails.getAppl_photo() + "</td>");
//	            out.println("<td>" + applicationDetails.getOwnship_photo1() + "</td>");
//	            out.println("<td>" + applicationDetails.getOwnship_photo2() + "</td>");
//	            out.println("<td>" + applicationDetails.getStatus() + "</td>");
//	            out.println("</tr>");
//	        }
//
//	        out.println("</table>");
//	        out.println("</body>");
//	        out.println("</html>");
//
//	        // Close the response writer
//	        out.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
