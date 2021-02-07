package com.example.backend_final_project.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name ="invoice_detail")
public class Invoice_Detail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int ID;

    @ManyToOne
    @JoinColumn(name ="invoice_id")
    private Invoice Invoice;

    @ManyToOne
    @JoinColumn(name ="product_id")
    private Product Product;

    @Column(name ="product_price")
    private int Product_Price;

    @Column(name ="quantity")
    private int Quantity;

    @Column(name ="total")
    private float Total;

    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Created_date;

    @Column(name = "update_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Update_Date;
}
