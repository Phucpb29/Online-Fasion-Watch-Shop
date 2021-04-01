import React, { useState, useEffect } from "react";
import OrderCart from "./components/order-cart";
import OrderForm from "./components/order-form";
import "./css/order.css";
import checkoutApi from "../../api/checkoutApi";
import Swal from "sweetalert2";
import dashboardApi from "../../api/dashboardApi";
import cartApi from "../../api/cartApi";
import LoadingOverplay from "../../components/loading/loading";

function Order() {
  const [user, setUser] = useState({
    isdelete: false,
    id: "",
    address: "",
    birthday: "",
    fullname: "",
    email: "",
    password: "",
    phone: "",
    update_date: "",
    created_date: "",
    username: "",
    gender: false,
  });
  const [cart, setCart] = useState([]);
  const [loading, setLoading] = useState(true);
  // đặt hàng
  function handleOrderSubmit(id, name, phone, address) {
    try {
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

  useEffect(() => {
    const fetchData = async () => {
      const dataToken = sessionStorage.getItem("accessToken");
      const statusToken = dataToken !== null ? true : false;
      if (statusToken) {
        const responseInfoUser = await dashboardApi.getInfo();
        const responseCart = await cartApi.viewCart();
        setUser(responseInfoUser.data);
        setCart(responseCart.data);
      }
      setLoading(false);
    };
    fetchData();
    return () => {
      setUser({});
      setCart([]);
      setLoading(true);
    };
  }, []);

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="row">
          <div className="col-1">
            <div className="container">
              <OrderForm user={user} handleOrderSubmit={handleOrderSubmit} />
            </div>
          </div>
          <div className="col-2">
            <div className="container">
              <OrderCart cart={cart} />
            </div>
          </div>
        </div>
      )}
    </>
  );
}

export default Order;
