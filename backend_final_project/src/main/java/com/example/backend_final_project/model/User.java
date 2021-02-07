package com.example.backend_final_project.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private int Id;

    @Column(name = "username")
    private String Username;

    @Column(name = "password")
    private String Password;

    @Column(name = "email")
    private String Email;

    @Column(name = "fullname")
    private String Fullname;

    @Column(name = "gender")
    private boolean Gender;

    @Column(name = "birthday")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Birthday;

    @Column(name = "phone")
    private String Phone;

    @Column(name = "address")
    private String Address;

    @Column(name = "isdelete")
    private boolean isdelete;

    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Created_date;

    @Column(name = "update_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Update_date;

   @OneToMany(mappedBy="invoice",fetch=FetchType.EAGER)
    private Collection<Invoice> Invoice;

    @OneToMany(mappedBy="cart",fetch=FetchType.EAGER)
    private Collection<Cart> Cart;

    @OneToMany(mappedBy="comment",fetch=FetchType.EAGER)
    private Collection<Comment> Comment;

    @OneToMany(mappedBy="wishlish",fetch=FetchType.EAGER)
    private Collection<Wishlish> Wishlish;

}
