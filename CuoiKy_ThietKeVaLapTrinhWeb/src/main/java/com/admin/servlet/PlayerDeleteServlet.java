package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PlayerDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class PlayerDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			PlayerDAOImpl dao = new PlayerDAOImpl(DBConnect.getConn());
			
			boolean f = dao.deletePlayer(id);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("sucMsg", "");
				resp.sendRedirect("admin/all_players.jsp");
			}else {
				session.setAttribute("failedMsg", "");
				resp.sendRedirect("admin/all_players.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
  
}
