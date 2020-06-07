/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;

public class Catrgory 
{
    private int cid;
    private String name;
    private String deacription;

    public Catrgory(int cid, String name, String deacription) {
        this.cid = cid;
        this.name = name;
        this.deacription = deacription;
    }
    public Catrgory(String name, String deacription) {
        this.name = name;
        this.deacription = deacription;
    }

    public Catrgory() {
    }
    public int getCid() {
        return cid;
    }
    public void setCid(int cid) {
        this.cid = cid;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDeacription() {
        return deacription;
    }
    public void setDeacription(String deacription) {
        this.deacription = deacription;
    }
    
    
    
    
}
