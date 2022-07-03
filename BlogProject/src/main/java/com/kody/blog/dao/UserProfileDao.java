package com.kody.blog.dao;
import java.sql.*;

import com.kody.blog.entities.UserProfile;

public class UserProfileDao {
	
	private Connection con;

	public UserProfileDao(Connection con) {
		super();
		this.con = con;
	}
	
	// Insert user to data base
	public boolean saveUserProfile(UserProfile user)
	{
		boolean flag=false;
		try
		{
			String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
			PreparedStatement pstmt= this.con.prepareStatement(query);
			pstmt.setString(1,user.getName());
			pstmt.setString(2,user.getEmail());
			pstmt.setString(3,user.getPassword());
			pstmt.setString(4,user.getGender());
			pstmt.setString(5,user.getAbout());
			pstmt.executeUpdate();
			flag=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	

    //get user by useremail and userpassword:
    public UserProfile getUserByEmailAndPassword(String email, String password) {
        UserProfile user = null;

        try {

            String query = "select * from user where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new UserProfile();

//             data from db
//             set to user object
                user.setName(set.getString("name"));
                	
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("dateTime"));
                user.setProfile(set.getString("profile"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    
    
    public boolean updateUser(UserProfile user) {

        boolean f = false;
        try {

            String query = "update user set name=? , email=? , password=? , gender=? ,about=? , profile=? where  id =?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3, user.getPassword());
            p.setString(4, user.getGender());
            p.setString(5, user.getAbout());
            p.setString(6, user.getProfile());
            p.setInt(7, user.getId());

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }	
    
    public UserProfile getUserByUserId(int userId) {
    	UserProfile user = null;
        try {
            String q = "select * from user where id=?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new UserProfile();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("dateTime"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
