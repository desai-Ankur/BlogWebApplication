
package com.kody.blog.entities;

public class Category {
    private int cid;
    private String name;
    private String description;
    private int userId;
    public Category(int cid, String name, String description,int userId) {
        this.cid = cid;
        this.userId = userId;
        this.name = name;
        this.description = description;
    }

    public Category() {
    }

    public Category(String name, String description) {
        this.name = name;
        this.description = description;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
    
    @Override
	public String toString() {
		return "Category [cid=" + cid + ", name=" + name + ", description=" + description + ", userId=" + userId + "]";
	}
    
    
    
}
