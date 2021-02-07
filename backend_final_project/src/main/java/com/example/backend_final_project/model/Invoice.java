package com.example.backend_final_project.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name ="invoice")
public class Invoice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int ID;

    @Column(name ="code")
    private String Code;

    @Column(name ="total")
    private float Total;

    @ManyToOne
    @JoinColumn(name ="voucher_id")
    private Voucher Voucher;
    
    @ManyToOne
    @JoinColumn(name ="user_id")
    private User User;
    
    @Column(name ="payment")
    private String Payment;
    
    @Column(name="status")
    private int Status;

    @Column(name = "created_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Created_date;

    @Column(name = "update_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date Update_Date;

    @Column(name = "update_by")
    private String Update_by;

    @Column(name = "isdelete")
    private Boolean isdelete;

    @OneToMany(mappedBy="invoice_detail",fetch=FetchType.EAGER)
    private Collection<Invoice_Detail> Invoice_Detail;

    @OneToMany(mappedBy="delivery",fetch=FetchType.EAGER)
    private Collection<Delivery> Delivery;
}
