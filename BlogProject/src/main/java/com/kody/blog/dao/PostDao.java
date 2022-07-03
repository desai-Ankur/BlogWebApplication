/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kody.blog.dao;

import com.kody.blog.entities.Category;
import com.kody.blog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {

            String q = "select * from category";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int cid = set.getInt("id");
                String name = set.getString("name");
                String description = set.getString("description");
                int userid=set.getInt("userId");
                Category c = new Category(cid, name, description,userid);
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    public ArrayList<Category> getAllCategoriesByUid(int uid) {
        ArrayList<Category> list = new ArrayList<>();

        try {

            String q = "select * from category where userId=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1, uid);
           
            ResultSet set = pstmt.executeQuery();
            while (set.next()) {
                int cid = set.getInt("id");
                String name = set.getString("name");
                String description = set.getString("description");
                int userid=set.getInt("userId");
                Category c = new Category(cid, name, description,userid);
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    public boolean savePost(Post p) {
        boolean f = false;
        try {

            String q = "insert into blog(b_title,b_content,b_code,b_pic,catId,userId) values(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatId());
            pstmt.setInt(6, p.getUserId());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

//    get all the posts
    public List<Post> getAllPosts() {

        List<Post> list = new ArrayList<>();
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from blog order by b_id desc");

            ResultSet set = p.executeQuery();

            while (set.next()) {

                int pid = set.getInt("b_id");
                String pTitle = set.getString("b_title");
                String pContent = set.getString("b_content");
                String pCode = set.getString("b_code");
                String pPic = set.getString("b_pic");
                Timestamp date = set.getTimestamp("b_date");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Post> getPostByCatId(int catId) {
        List<Post> list = new ArrayList<>();
        //fetch all post by id
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from blog where catId=?");
            p.setInt(1, catId);
            ResultSet set = p.executeQuery();

            while (set.next()) {

                int pid = set.getInt("b_id");
                String pTitle = set.getString("b_title");
                String pContent = set.getString("b_content");
                String pCode = set.getString("b_code");
                String pPic = set.getString("b_pic");
                Timestamp date = set.getTimestamp("b_date");

                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Post getPostByPostId(int postId) {
        Post post = null;
        String q = "select * from blog where b_id=?";
        try {
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, postId);

            ResultSet set = p.executeQuery();

            if (set.next()) {

                int pid = set.getInt("b_id");
                String pTitle = set.getString("b_title");
                String pContent = set.getString("b_content");
                String pCode = set.getString("b_code");
                String pPic = set.getString("b_pic");
                Timestamp date = set.getTimestamp("b_date");
                int cid=set.getInt("catId");
                int userId = set.getInt("userId");
                post = new Post(pid, pTitle, pContent, pCode, pPic, date, cid, userId);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return post;
    }
    
    

//  get all the posts by user
  public List<Post> getAllPosts(int uid) {

      List<Post> list = new ArrayList<>();
      //fetch all the post
      try {

          PreparedStatement p = con.prepareStatement("select * from blog where userid=? order by b_id desc");
          p.setInt(1, uid);
          ResultSet set = p.executeQuery();

          while (set.next()) {

              int pid = set.getInt("b_id");
              String pTitle = set.getString("b_title");
              String pContent = set.getString("b_content");
              String pCode = set.getString("b_code");
              String pPic = set.getString("b_pic");
              Timestamp date = set.getTimestamp("b_date");
              int catId = set.getInt("catId");
              int userId = set.getInt("userId");
              Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);

              list.add(post);
          }

      } catch (Exception e) {
          e.printStackTrace();
      }
      return list;
  }
    
}
