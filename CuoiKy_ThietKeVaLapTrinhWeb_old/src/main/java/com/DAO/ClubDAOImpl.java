package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.ClubDtls;
import com.mysql.cj.xdevapi.Result;

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
	
	
     @Override	
     public List<ClubDtls> getAllClubs() {
 		List<ClubDtls> list = new ArrayList<ClubDtls>();
 		ClubDtls b = null;
 		
 		try {
			String sql= "select *from club_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				b = new ClubDtls();
				b.setId(rs.getInt(1));
				b.setLogo(rs.getString(2));
				b.setName(rs.getString(3));
				list.add(b);
			}
 			
 			
		} catch (Exception e) {
			e.printStackTrace();
		}
 		return list;
     }
     
 	@Override
 	public ClubDtls getClubById(int id) {
 		ClubDtls b = null;

 		try {

 			String sql = "SELECT * FROM club_dtls where Id=?";
 			PreparedStatement ps = conn.prepareStatement(sql);
 			ps.setInt(1, id);
 			ResultSet rs = ps.executeQuery();
 			while (rs.next()) {
 				b = new ClubDtls();
 				b.setId(rs.getInt(1));
 				b.setLogo(rs.getString(2));
 				b.setName(rs.getString(3));

 			}

 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		return b;
 	}

}
