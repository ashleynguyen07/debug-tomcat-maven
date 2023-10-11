/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Model;
import java.math.BigDecimal;
/**
 *
 * @author Admin
 */
public class Mark {
    
    private String studentid;
    private String lastname;
    private String firstname;
    private BigDecimal progress_mark;
    private BigDecimal middle_mark;
    private BigDecimal final_mark;
    private BigDecimal total_mark;
    private String major;
    private int semester;
    private int year;

    public Mark() {
    }

    public Mark(String studentid, String lastname, String firstname, BigDecimal progress_mark, BigDecimal middle_mark, BigDecimal final_mark, BigDecimal total_mark, String major, int semester, int year) {
        this.studentid = studentid;
        this.lastname = lastname;
        this.firstname = firstname;
        this.progress_mark = progress_mark;
        this.middle_mark = middle_mark;
        this.final_mark = final_mark;
        this.total_mark = total_mark;
        this.major = major;
        this.semester = semester;
        this.year = year;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
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

    public BigDecimal getProgress_mark() {
        return progress_mark;
    }

    public void setProgress_mark(BigDecimal progress_mark) {
        this.progress_mark = progress_mark;
    }

    public BigDecimal getMiddle_mark() {
        return middle_mark;
    }

    public void setMiddle_mark(BigDecimal middle_mark) {
        this.middle_mark = middle_mark;
    }

    public BigDecimal getFinal_mark() {
        return final_mark;
    }

    public void setFinal_mark(BigDecimal final_mark) {
        this.final_mark = final_mark;
    }

    public BigDecimal getTotal_mark() {
        return total_mark;
    }

    public void setTotal_mark(BigDecimal total_mark) {
        this.total_mark = total_mark;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
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
        return "Mark{" + "studentid=" + studentid + ", lastname=" + lastname + ", firstname=" + firstname + ", progress_mark=" + progress_mark + ", middle_mark=" + middle_mark + ", final_mark=" + final_mark + ", total_mark=" + total_mark + ", major=" + major + ", semester=" + semester + ", year=" + year + '}';
    }
    
    
    
}
