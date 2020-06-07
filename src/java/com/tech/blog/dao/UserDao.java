package com.tech.blog.dao;
import com.tech.blog.entities.Post;
import java.sql.*;
import com.tech.blog.entities.User;
public class UserDao 
{
    Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    public boolean saveUser(User user)
    {
        boolean f=false;
        try
        {
                //            
                //            Name        Null     Type          
                //----------- -------- ------------- 
                //USER_ID     NOT NULL NUMBER(38)    
                //USER_NAME   NOT NULL VARCHAR2(500) 
                //USER_EMAIL  NOT NULL VARCHAR2(40)  
                //USER_PSWD   NOT NULL VARCHAR2(40)  
                //USER_GENDER NOT NULL VARCHAR2(10)  
                //ABOUT                VARCHAR2(500) 
                //RDATE                TIMESTAMP(6) 

            
            String query="insert into users (user_id,user_name,user_email,user_pswd,user_gender,about,rdate) values (user_id.nextval,?,?,?,?,?,current_timestamp)";
            PreparedStatement stmt=this.con.prepareStatement(query);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getGender());
            stmt.setString(5, user.getAbout());
            stmt.executeQuery();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
    public User getUserByEmailAndPassword(String Email,String Password)
    {
        User user=null;
        try
        {
            String query="select * from users where user_email = ?  and user_pswd = ?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, Email);
            stmt.setString(2, Password);
            ResultSet rs=stmt.executeQuery();
            if(rs.next())
            {
            //                Name        Null     Type          
            //----------- -------- ------------- 
            //USER_ID     NOT NULL NUMBER(38)    
            //USER_NAME   NOT NULL VARCHAR2(500) 
            //USER_EMAIL  NOT NULL VARCHAR2(40)  
            //USER_PSWD   NOT NULL VARCHAR2(40)  
            //USER_GENDER NOT NULL VARCHAR2(10)  
            //ABOUT                VARCHAR2(500) 
            //RDATE                TIMESTAMP(6)

                
                
                user=new User();
                String name=rs.getString("user_name");
                user.setName(name);
                user.setId(rs.getInt("user_id"));
                user.setEmail(rs.getString("user_email"));
                user.setPassword(rs.getString("user_pswd"));
                user.setGender(rs.getString("user_gender"));
                user.setAbout(rs.getString("about"));
                user.setDatetime(rs.getTimestamp("rdate"));
                user.setProfile(rs.getString("user_profile"));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
    public boolean updateUser(User user)
    {
        boolean f=false;
        try
        {
            String query="update users set user_name=?,user_email=?,user_pswd=?,user_gender=?,about=?,user_profile=? where user_id=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getGender());
            stmt.setString(5, user.getAbout());
            stmt.setString(6, user.getProfile());
            stmt.setInt(7, user.getId());
            
            stmt.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
}
