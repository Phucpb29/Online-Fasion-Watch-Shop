package com.example.backend_final_project.model;

import com.example.backend_final_project.model.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int ID;

    @Column(name = "code")
    private String Code;

    @Column(name = "name")
    private String Name;

    @Column(name = "price")
    private float Price;

    @Column(name = "price_sale")
    private float Price_slae;

    @Column(name = "description")
    private String Description;

    @ManyToOne()
    @JoinColumn(name = "product_type")
    private Product_type productType;

    @ManyToOne()
    @JoinColumn(name = "brand")
    private Brand Brand;

    @Column(name = "issale")
    private boolean Issale;

    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "ysyyy/MM/dd")
    private Date Created_date;

    @Column(name = "creatd_by")
    private String Creatd_by;

    @Column(name ="isdelete")
    private boolean isdelete;
    
    @OneToMany(mappedBy="product_detail",fetch=FetchType.EAGER)
    private Collection<Product_Detail> Product_Detail;
   @OneToMany(mappedBy="product_image",fetch=FetchType.EAGER)
   private Collection<Product_Image> Product_Image;

   @OneToMany(mappedBy = "product_property_detail")
   private Collection<Product_Property_Detail> Product_Property_Detail;

    @OneToMany(mappedBy="invoice_detail",fetch=FetchType.EAGER)
    private Collection<Invoice_Detail> Invoice_Detail;

    @OneToMany(mappedBy="cart_detail",fetch=FetchType.EAGER)
    private Collection<Cart_Detail> Cart_Detail;

    @OneToMany(mappedBy="comment",fetch=FetchType.EAGER)
    private Collection<Comment> Comment;

    @OneToMany(mappedBy="storage",fetch=FetchType.EAGER)
    private Collection<Storage> Storage;

    @OneToMany(mappedBy="wishlish",fetch=FetchType.EAGER)
    private Collection<Wishlish> Wishlish;

    public Product() {
    }
}
