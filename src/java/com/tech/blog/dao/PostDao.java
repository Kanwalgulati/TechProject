package com.tech.blog.dao;
import com.tech.blog.entities.Catrgory;
import com.tech.blog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
public class PostDao 
{
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    public ArrayList<Catrgory> getAllCategories()
    {
        ArrayList<Catrgory> list=new ArrayList<>();
        try
        {
            
            String query="select * from categories";
            Statement st;
            System.out.println("hey buddyyyyyy");
            st = con.createStatement();
            ResultSet rs=st.executeQuery(query);
           
            while(rs.next())
            {   
                int cid=rs.getInt("cid");
                String CategoryName=rs.getString("c_name");
                String CategoryDescription=rs.getString("C_DISCREPTION");
                Catrgory c=new Catrgory(cid, CategoryName, CategoryDescription);
                list.add(c);
                System.out.println(c+"hello");
            }
        }
        catch(Exception e)  
        {
            e.printStackTrace();
        }
        return list;
    }
    public boolean savePost(Post p)
    {
        boolean f=false;
        int id=p.getCid();
        int uid=p.getUserid();
        System.out.println("ID ---- "+id );
        System.out.println("User Id----- "+uid);
        try
        {
            String query="insert into posts (p_id,p_title,p_content,p_code,p_pic,p_date,cid,user_id) values (p_id.nextval,?,?,?,?,current_timestamp,?,?)";
            //String query="insert into posts (p_id,p_title,p_content,p_code,p_pic,p_date,cid,user_id) values (p_id.nextval,?,?,?,current_timestamp,?,?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, p.getpTitle());
            stmt.setString(2, p.getpContent());
            stmt.setString(3, p.getpCode());
            stmt.setString(4, p.getpPic());
            stmt.setInt(5, p.getCid());
            stmt.setInt(6, p.getUserid());
            stmt.executeUpdate();
            f=true;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
