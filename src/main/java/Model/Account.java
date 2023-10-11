/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Account {
    
    private String email;
    private String password;
    private int roleid;
    private String token;

    public Account(String email, String password, int roleid) {
        this.email = email;
        this.password = password;
        this.roleid = roleid;
    }

    public Account(String email, String token) {
        this.email = email;
        this.token = token;
    }

    public Account() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }
    
    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    @Override
    public String toString() {
        return "Account{" + "email=" + email + ", password=" + password + ", roleid=" + roleid + '}';
    }
    
    
}
