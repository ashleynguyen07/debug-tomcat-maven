/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author tramy
 */
public class Notification {

    private int notificationId;
    private String title;
    private String content;
    private Date date;
    private int categoryId;
    private int classid;
    private String teacherid;
    private Teacher teacher;

    // Getters and Setters
    public int getNotificationId() {
        return notificationId;
    }

    public Notification() {
    }
    
    

    public Notification(int notificationId, String title, String content, Date date, int categoryId) {
        this.notificationId = notificationId;
        this.title = title;
        this.content = content;
        this.date = date;
        this.categoryId = categoryId;
    }

    public Notification(int notificationId, String title, String content, Date date, int categoryId, int classid, String teacherid, Teacher teacher) {
        this.notificationId = notificationId;
        this.title = title;
        this.content = content;
        this.date = date;
        this.categoryId = categoryId;
        this.classid = classid;
        this.teacherid = teacherid;
        this.teacher = teacher;
    }


    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public void setNotificationId(int notificationId) {
        this.notificationId = notificationId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public String toString() {
        return "Notification{" + "notificationId=" + notificationId + ", title=" + title + ", content=" + content + ", date=" + date + ", categoryId=" + categoryId + ", classid=" + classid + ", teacherid=" + teacherid + '}';
    }

    

    

}
