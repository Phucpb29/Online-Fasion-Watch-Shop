package com.example.backend_final_project.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "product_type")
public class Product_type {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private int Id;

    @Column(name = "name")
    private String Name;

    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Created_date;

    @Column(name = "created_by")
    private String Created_by;

    @Column(name = "update_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Update_Date;

    @Column(name = "update_by")
    private String Update_by;

    @Column(name = "isdelete")
    private Boolean isdelete;

    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private Collection<Product> product;

   @OneToMany(mappedBy="voucher",fetch = FetchType.EAGER)
   private Collection<Voucher> Voucher;

    public Product_type() {
    }
}
