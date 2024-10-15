package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UsersDetails;
import com.dao.UserDao;

/**
 * Servlet implementation class SearchEmpServlet
 */
@WebServlet("/SearchEmpServlet")
public class SearchEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchEmpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String division = request.getParameter("division");
        UserDao userDao = new UserDao(); // You need to replace this with your UserDao class

        try {
            List<UsersDetails> empDetailsList = userDao.getEmployeesByDivision(division);
            request.setAttribute("empDetailsList", empDetailsList);
            request.getRequestDispatcher("adminlist.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any database errors here
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
