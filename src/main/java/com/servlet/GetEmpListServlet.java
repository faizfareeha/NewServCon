package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.UsersDetails;
import com.dao.UserDao;

/**
 * Servlet implementation class GetEmpListSevlet
 */
@WebServlet("/GetEmpListServlet")
public class GetEmpListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEmpListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//HttpSession session = request.getSession();
		UserDao dao = new UserDao();
		try {
			String role = "Official";
			List<UsersDetails> empDetailsList = dao.getAllEmpDetails(role);

	        request.setAttribute("empDetailsList", empDetailsList);


	        request.getRequestDispatcher("adminlist.jsp").forward(request, response);
	        
	        
	        
//			response.setContentType("text/html");
//	        PrintWriter out = response.getWriter();
//
//	        // Iterate through the list and print the values for each object
//	        out.println("<html>");
//	        out.println("<head><title>Employee Details</title></head>");
//	        out.println("<body>");
//	        out.println("<h1>Employee Details</h1>");
//	        out.println("<table border='1'>");
//	        out.println("<tr>");
//	        out.println("<th>Employee ID</th>");
//	        out.println("<th>Name</th>");
//	        out.println("<th>Email</th>");
//	        out.println("<th>Mobile</th>");
//	        out.println("<th>Division</th>");
//	        out.println("<th>Subdivision</th>");
//	        out.println("<th>Section</th>");
//	        out.println("</tr>");
//
//	        for (UsersDetails empDetails : empDetailsList) {
//	            out.println("<tr>");
//	            out.println("<td>" + empDetails.getUserId() + "</td>");
//	            out.println("<td>" + empDetails.getName() + "</td>");
//	            out.println("<td>" + empDetails.getEmail() + "</td>");
//	            out.println("<td>" + empDetails.getMobile() + "</td>");
//	            out.println("<td>" + empDetails.getDivision() + "</td>");
//	            out.println("<td>" + empDetails.getSubdivision() + "</td>");
//	            out.println("<td>" + empDetails.getSection() + "</td>");
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
