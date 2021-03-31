import React from "react";
import OrderCart from "./components/order-cart";
import OrderForm from "./components/order-form";
import "./css/order.css";
import checkoutApi from "../../api/checkoutApi";
import Swal from "sweetalert2";

function Order() {
  // đặt hàng
  function handleOrderSubmit(id, name, phone, address) {
    try {
      console.log(id, name, phone, address);
      checkoutApi
        .order(id, {
          name: name,
          phone: phone,
          address: address,
        })
        .then(function (response) {
          console.log(response.data);
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: "ĐẶT HÀNG THÀNH CÔNG",
              icon: "success",
              showConfirmButton: true,
            });
          }
          if (response.status === 400) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: "ĐẶT HÀNG KHÔNG THÀNH CÔNG",
              icon: "error",
              showConfirmButton: true,
            });
          }
        });
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "ĐẶT HÀNG KHÔNG THÀNH CÔNG",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }

  return (
    <div className="row">
      <div className="col-1">
        <div className="container">
          <OrderForm handleOrderSubmit={handleOrderSubmit} />
        </div>
      </div>
      <div className="col-2">
        <div className="container">
          <OrderCart />
        </div>
      </div>
    </div>
  );
}

export default Order;
