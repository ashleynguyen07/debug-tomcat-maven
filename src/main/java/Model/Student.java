/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Student {

    private String studentid;
    private String lastName;
    private String firstName;
    private String email;
    private String address;
    private String phoneNumber;
    private int classid;
    private boolean gender;
    private Date dob;
    private String className;
    private int semester;
    private int year;

    public Student() {
    }

    public Student(String studentid, String lastName, String firstName, String email, String address, String phoneNumber, boolean gender, Date dob, String className, int semester, int year) {
        this.studentid = studentid;
        this.lastName = lastName;
        this.firstName = firstName;
        this.email = email;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.dob = dob;
        this.className = className;
        this.semester = semester;
        this.year = year;
    }

    public Student(String studentid, String lastName, String firstName, String email, String address, String phoneNumber, int classid, boolean gender, Date dob) {
        this.studentid = studentid;
        this.lastName = lastName;
        this.firstName = firstName;
        this.email = email;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.classid = classid;
        this.gender = gender;
        this.dob = dob;
    }

    public Student(String studentid, String lastName, String firstName, String email, String address, String phoneNumber, int classid, boolean gender, Date dob, String className) {
        this.studentid = studentid;
        this.lastName = lastName;
        this.firstName = firstName;
        this.email = email;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.classid = classid;
        this.gender = gender;
        this.dob = dob;
        this.className = className;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
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

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    @Override
    public String toString() {
        return "Student{" + "studentid=" + studentid + ", lastName=" + lastName + ", firstName=" + firstName + ", email=" + email + ", address=" + address + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", dob=" + dob + ", className=" + className + ", semester=" + semester + ", year=" + year + '}';
    }

}
