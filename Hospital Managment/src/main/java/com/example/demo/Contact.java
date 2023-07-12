package com.example.demo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="tblcontactus",schema="hms")
public class Contact {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column
    private int id;
    @Column
    private String fullname;
    @Column
    private String email;
    @Column
    private String contactno;
    @Column
    private String password;
    @Column
    private String message;
    public Contact(int id, String fullname, String email, String contactno, String password, String message) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.contactno = contactno;
        this.password = password;
        this.message = message;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getFullname() {
        return fullname;
    }
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getContactno() {
        return contactno;
    }
    public void setContactno(String contactno) {
        this.contactno = contactno;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    @Override
    public String toString() {
        return "contact [fullname=" + fullname + ", email=" + email + ", contactno=" + contactno + ", password="
                + password + ", message=" + message + "]";
    }   
}
