package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.ClubDtls;

public class ClubDAOImpl implements ClubDAO{

	private Connection conn;
	
	
	public ClubDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean addClubs(ClubDtls b) {
	  boolean f=false;
		try {
			String sql = "INSERT INTO club_dtls(logo,name) values(?,?) ";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setString(1, b.getLogo());
			ps.setString(2, b.getName());
			
			int i = ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

}
