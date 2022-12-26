package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MatchesDAOImpl;
import com.DB.DBConnect;
import com.entity.MatchesDtls;

@WebServlet("/editMatches")
public class EditMatchesServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			
		    String time = req.getParameter("time");
		    String team1 = req.getParameter("team1");
			String score1 = req.getParameter("score1");
			String score2 = req.getParameter("score2");
			String team2 = req.getParameter("team2");
			
			
					
			MatchesDtls b = new MatchesDtls();
			b.setIdmatches(id);
			b.setTime(time);
			b.setTeam1(team1);
			b.setScore1(score1);
			b.setScore2(score2);
			b.setTeam2(team2);
			
		
			MatchesDAOImpl dao = new MatchesDAOImpl(DBConnect.getConn());	
			boolean f=dao.updateMatches(b);
            HttpSession session =req.getSession();
            
            
			
			if(f) {
				session.setAttribute("failedMsg", "");
				resp.sendRedirect("admin/all_clubs.jsp");
				
			}else
			{
				session.setAttribute("sucMsg", "");
				resp.sendRedirect("admin/all_clubs.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
