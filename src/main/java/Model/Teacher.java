/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Teacher {
    private String teacherid; 
    private String lastname;
    private String firstname;
    private String major;
    private String email;
    private String address;
    private String phoneNumber;
    private Date dob;
    private boolean  gender;
    //private List<String> class_assign;

    public Teacher() {
    }

    public Teacher(String lastname, String firstname) {
        this.lastname = lastname;
        this.firstname = firstname;
    }

    
    
    public Teacher(String teacherid, String lastname, String firstname, String major, String email, String address, String phoneNumber, Date dob, boolean gender) {
        this.teacherid = teacherid;
        this.lastname = lastname;
        this.firstname = firstname;
        this.major = major;
        this.email = email;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.dob = dob;
        this.gender = gender;
    }

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Teacher{" + "teacherid=" + teacherid + ", lastname=" + lastname + ", firstname=" + firstname + ", major=" + major + ", email=" + email + ", address=" + address + ", phoneNumber=" + phoneNumber + ", dob=" + dob + ", gender=" + gender + '}';
    }
    
    
}
