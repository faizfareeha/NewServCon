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

import com.bean.Blocks;
import com.bean.Districts;
import com.bean.Panchayats;
import com.bean.Villages;
import com.dao.dbpvDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetDBPVServlet
 */
@WebServlet("/GetDBPVServlet")
public class GetDBPVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDBPVServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		try (PrintWriter out = response.getWriter()) {

            String op = request.getParameter("operation");
            
            if (op.equals("district")) {
                List<Districts> dlist = dbpvDao.getDis();
                System.out.println(dlist);
                Gson json = new Gson();
                String disList = json.toJson(dlist);
                response.setContentType("text/html");
                System.out.println(disList);
                response.getWriter().write(disList);
            }

            if (op.equals("block")) {
                int id = Integer.parseInt(request.getParameter("id"));
                List<Blocks> blist = dbpvDao.getBlk(id);
                Gson json = new Gson();
                String disList = json.toJson(blist);
                response.setContentType("text/html");
                response.getWriter().write(disList);
            }

            if (op.equals("panchayat")) {
                int id = Integer.parseInt(request.getParameter("id"));
                List<Panchayats> plist = dbpvDao.getPan(id);
                Gson json = new Gson();
                String disList = json.toJson(plist);
                response.setContentType("text/html");
                response.getWriter().write(disList);
            }
            
            if (op.equals("village")) {
                int id = Integer.parseInt(request.getParameter("id"));
                List<Villages> vlist = dbpvDao.getVil(id);
                Gson json = new Gson();
                String disList = json.toJson(vlist);
                response.setContentType("text/html");
                response.getWriter().write(disList);
            }
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
