package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserRole;
import com.bean.UsersDetails;
import com.dao.RoleDao;

/**
 * Servlet implementation class GetApplicantType
 */
@WebServlet("/GetApplicantType")
public class GetApplicantType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetApplicantType() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("working");
		listRole(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
//		UsersDetails ud = new UsersDetails();
//		if (ud.getUserId() != 0 && ud.getName() != null &&  ud.getEmail() != null  &&  ud.getPwd() != null  &&  ud.getRole() != null  &&  ud.getRole() == "Applicant") {
//			response.sendRedirect("http://localhost:8080/NewServCon/application_form.jsp");
//		}
//		else if (ud.getUserId() != 0 && ud.getName() != null &&  ud.getEmail() != null  &&  ud.getPwd() != null  &&  ud.getRole() != null  &&  ud.getRole() == "Official") {
//			response.sendRedirect("view_application.jsp");
//		}
	}

	private void listRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		try {
 
            List<UserRole> listRole = RoleDao.list();
            System.out.println(listRole);
            request.setAttribute("listRole", listRole);
 
            RequestDispatcher dispatcher = request.getRequestDispatcher("regpage.jsp");
            dispatcher.forward(request, response);
            
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	    
	    listRole(request, response);
		
		
	}

	

}
