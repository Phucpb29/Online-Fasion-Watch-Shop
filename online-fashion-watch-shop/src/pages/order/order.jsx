import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import Swal from "sweetalert2";
import cartApi from "../../api/cartApi";
import checkoutApi from "../../api/checkoutApi";
import dashboardApi from "../../api/dashboardApi";
import Error from "../../components/error/error";
import LoadingOverplay from "../../components/loading/loading";
import OrderCart from "./components/order-cart";
import OrderForm from "./components/order-form";
import OrderLoad from "./components/order-load";
import "./css/order.css";

Order.prototype = {
  cart: PropTypes.array,
  statusToken: PropTypes.bool,
  handleOrder: PropTypes.func,
};

Order.DefaultPropTypes = {
  cart: [],
  statusToken: false,
  handleOrder: null,
};

function Order(props) {
  const { cart, statusToken, handleOrder } = props;
  const [orderLoading, setOrderLoading] = useState(false);

  // đặt hàng
  function handleOrderSubmit(id, name, phone, address) {
    try {
      setOrderLoading(true);
      checkoutApi
        .order(id, {
          name: name,
          phone: phone,
          address: address,
        })
        .then(function (response) {
          if (response.status === 200) {
            setOrderLoading(false);
            handleOrder();
            Swal.fire({
              title: "THÔNG BÁO",
              text: "ĐẶT HÀNG THÀNH CÔNG",
              icon: "success",
              showConfirmButton: true,
            }).then((result) => {
              if (result.isConfirmed) {
                window.location.replace(
                  "/thong-tin-tai-khoan/lich-su-mua-hang"
                );
              }
            });
          }
          if (response.status === 400) {
            setOrderLoading(false);
            Swal.fire({
              title: "THÔNG BÁO",
              text: "ĐẶT HÀNG KHÔNG THÀNH CÔNG",
              icon: "error",
              showConfirmButton: true,
            });
          }
        });
    } catch (error) {
      setOrderLoading(false);
      Swal.fire({
        title: "THÔNG BÁO",
        text: "ĐẶT HÀNG KHÔNG THÀNH CÔNG",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }

  return (
    <>
      {orderLoading && <OrderLoad orderLoading={orderLoading} />}
      {cart.length > 0 ? (
        <div className="row">
          <div className="col-1">
            <div className="container">
              <OrderForm
                statusToken={statusToken}
                handleOrderSubmit={handleOrderSubmit}
              />
            </div>
          </div>
          <div className="col-2">
            <div className="container">
              <OrderCart cart={cart} />
            </div>
          </div>
        </div>
      ) : (
        <Error text={"BẠN CHƯA CÓ GIỎ HÀNG"} />
      )}
    </>
  );
}

export default Order;
