package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ApplicationDetails;
import com.dao.ApplicationDao;

/**
 * Servlet implementation class GetStatusServlet
 */
@WebServlet("/GetStatusServlet")
public class GetStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

        

        // TODO: Fetch verification status and application ID from the database based on applicationId
        try {
    	//ApplicationDetails ad = new ApplicationDetails();
    	// Retrieve the application ID entered by the user
        int applicationId = Integer.parseInt(request.getParameter("applicationid"));
        //int appid = ApplicationDao.getAppId(applicationId);
        String verificationStatus = ApplicationDao.getVeriStatus(applicationId);

        // Set the application ID and verification status as attributes in the request
        request.setAttribute("applicationId", applicationId);
        request.setAttribute("verificationStatus", verificationStatus);

        
        //int appId = ad.getApp_id();
        // Forward the request to the application_status.jsp
		request.getRequestDispatcher("statuspage.jsp").forward(request, response);
        


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
