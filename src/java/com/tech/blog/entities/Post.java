/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;

import java.sql.Timestamp;

public class Post 
{
    private int pid;
    private String pTitle;
    private String pCode;
    private String pContent;
    private String pPic;
    private Timestamp pDate;
    private int cid;
    private int userid;

    public Post() 
    {
    
    }
    public Post(int pid, String pTitle, String pCode, String pContent, String pPic, Timestamp pDate, int cid , int userid) 
    {
        
        this.pid = pid;
        this.pTitle = pTitle;
        this.pCode = pCode;
        this.pContent = pContent;
        this.pPic = pPic;
        this.pDate = pDate;
        this.cid = cid;
        this.userid=userid;
    }
    public Post(String pTitle, String pCode, String pContent, String pPic, Timestamp pDate, int cid,int userid) 
    {
        System.out.println("IN Post Constructor : CID ==== "+cid+"\n\n");
        this.pTitle = pTitle;
        this.pCode = pCode;
        this.pContent = pContent;
        this.pPic = pPic;
        this.pDate = pDate;
        this.cid = cid;
        this.userid=userid;
        System.out.println("IN Post Constructor : this.CID ==== "+this.cid+"\n\n");
        
    }
    public int getPid() 
    {
        return pid;
    }
    public void setPid(int pid) 
    {
        this.pid = pid;
    }
    public String getpTitle() 
    {
        return pTitle;
    }
    public void setpTitle(String pTitle) 
    {
        this.pTitle = pTitle;
    }
    public String getpCode() 
    {
        return pCode;
    }
    public void setpCode(String pCode) 
    {
        this.pCode = pCode;
    }
    public String getpContent() 
    {
        return pContent;
    }
    public void setpContent(String pContent) 
    {
        this.pContent = pContent;
    }
    public String getpPic() 
    {
        return pPic;
    }
    public void setpPic(String pPic) 
    {
        this.pPic = pPic;
    }
    public Timestamp getpDate() 
    {
        return pDate;
    }
    public void setpDate(Timestamp pDate) 
    {
        this.pDate = pDate;
    }
    public int getCid() 
    {
        return cid;
    }
    public void setCid(int cid) 
    {
        this.cid = cid;
    }

    /**
     * @return the userid
     */
    public int getUserid() {
        return userid;
    }

    /**
     * @param userid the userid to set
     */
    public void setUserid(int userid) {
        this.userid = userid;
    }
    
    
}
