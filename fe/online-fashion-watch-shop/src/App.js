import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Redirect,
  Route,
  Switch,
} from "react-router-dom";
import Swal from "sweetalert2";
import cartApi from "./api/cartApi";
import userApi from "./api/userApi";
import CartModal from "./components/cart/cart";
import Error from "./components/error/error";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";
import OverPlay from "./components/overplay/overplay";
import Account from "./pages/account/account";
import DialogComment from "./pages/account/dialog-comment/dialog";
import Forgotpass from "./pages/forgotpass/forgotpass";
import Home from "./pages/home/home";
import Login from "./pages/login/login";
import Maxacnhan from "./pages/maxacnhan/maxacnhan";
import Order from "./pages/order/order";
import Product from "./pages/product/product";
import WrapProductDetai from "./pages/product/wrap-productdetail";
import Register from "./pages/register/register";
import Resetpass from "./pages/resetpass/resetpass";

function App() {
  const [statusCart, setStatusCart] = useState(false);
  const [isOpenDialog, setIsOpenDiaglog] = useState(false);
  const [itemAmout, setItemAmout] = useState(0);
  const [cartList, setCartList] = useState([]);
  const [statusToken, setStatusToken] = useState(false);

  // mở giỏ hàng
  const openCart = () => {
    setStatusCart(true);
    document.body.style.overflow = "hidden";
  };

  // đóng giỏ hàng
  const closeCart = () => {
    setStatusCart(false);
    document.body.style.overflow = "unset";
  };

  // mở dialog
  const openDialog = () => {
    setIsOpenDiaglog(!isOpenDialog);
  };

  // đăng nhập tài khoản
  function handleLogin(email, password) {
    try {
      userApi
        .login({
          username: email,
          password: password,
        })
        .then(function (response) {
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: "ĐĂNG NHẬP THÀNH CÔNG",
              icon: "success",
              showConfirmButton: true,
            }).then((value) => {
              const { accessToken } = response.data;
              sessionStorage.setItem("accessToken", accessToken);
              setStatusToken(true);
              if (value.value === true) {
                window.location.replace("/");
              }
            });
          }
          if (response.status === 400) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "error",
              showConfirmButton: true,
            });
          }
        });
    } catch (error) {
      console.log(error);
    }
  }

  // đăng xuất tài khoản
  function handleLogout() {
    Swal.fire({
      title: "THÔNG BÁO",
      text: "BẠN CÓ MUỐN ĐĂNG XUẤT TÀI KHOẢN",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "ĐĂNG XUẤT",
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire({
          title: "THÔNG BÁO",
          text: "Đăng xuất thành công. Hẹn gặp lại bạn sau!!!",
          icon: "success",
          showConfirmButton: true,
        }).then((result) => {
          if (result.isConfirmed) {
            sessionStorage.removeItem("accessToken");
            setStatusToken(false);
            setCartList([]);
            window.location.replace("/");
          }
        });
      }
    });
  }

  // thêm sản phẩm vào local storage
  const handleAddProductToLocal = (product) => {
    const quantity = 1;
    const totalPrice = product.price * quantity;
    const newCart = [...cartList];
    newCart.push({ ...product, quantity, totalPrice });
    setCartList(newCart);
  };

  // thêm sản phẩm khi chưa đăng nhập
  const handleAddProductWithoutLogin = (product) => {
    try {
      handleAddProductToLocal(product);
      Swal.fire({
        title: "THÔNG BÁO",
        text: "THÊM SẢN PHẨM THÀNH CÔNG",
        icon: "success",
        showConfirmButton: true,
      });
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "THÊM SẢN PHẨM KHÔNG THÀNH CÔNG",
        icon: "error",
        showConfirmButton: true,
      });
      console.log(error);
    }
  };

  // thêm sản phẩm khi đăng nhập
  const handleAddProductWithLogin = (product) => {
    try {
      if (cartList != null) {
        // thêm sản phẩm
        cartApi
          .insertProduct({
            product_id: product.id,
            total: product.price * 1,
            quantity: 1,
            product_price: product.price,
          })
          .then(function (response) {
            if (response.status === 200) {
              handleAddProductToLocal(product);
              Swal.fire({
                title: "THÔNG BÁO",
                text: "THÊM SẢN PHẨM THÀNH CÔNG",
                icon: "success",
                showConfirmButton: true,
              });
            } else {
              Swal.fire({
                title: "THÔNG BÁO",
                text: "THÊM SẢN PHẨM THẤT BẠI",
                icon: "error",
                showConfirmButton: true,
              });
            }
          });
      } else {
        // tạo giỏ hàng
        cartApi.createCart();
        // thêm sản phẩm
        cartApi
          .insertProduct({
            product_id: product.id,
            total: product.price * 1,
            quantity: 1,
            product_price: product.price,
          })
          .then(function (response) {
            if (response.status === 200) {
              handleAddProductToLocal(product);
              Swal.fire({
                title: "THÔNG BÁO",
                text: "THÊM SẢN PHẨM THÀNH CÔNG",
                icon: "success",
                showConfirmButton: true,
              });
            } else {
              Swal.fire({
                title: "THÔNG BÁO",
                text: "THÊM SẢN PHẨM THẤT BẠI",
                icon: "error",
                showConfirmButton: true,
              });
            }
          });
      }
    } catch (error) {
      console.log(error);
    }
  };

  // thêm sản phẩm vào giỏ hàng
  function handleAddProduct(product) {
    if (statusToken) {
      handleAddProductWithLogin(product);
    } else {
      handleAddProductWithoutLogin(product);
    }
  }

  // cập nhật sản phẩm vào giỏ hàng
  function handleUpdateProduct(cartList) {
    console.log(cartList);
    setCartList(cartList);
  }

  // kiểm tra token khi render lại trang
  useEffect(() => {
    const data = sessionStorage.getItem("accessToken");
    const response = data != null ? true : false;
    setStatusToken(response);
  }, [statusToken]);

  // kiểm tra giỏ hàng khi đăng nhập
  useEffect(() => {
    const fetchDataCart = async () => {
      try {
        if (statusToken !== true) return;
        const response = await cartApi.viewCart(); // lấy danh sách sản phẩm trong giỏ hàng
        if (response.status === 200) {
          setCartList(response.data);
        }
        if (response.status === 400) {
          setCartList([]);
        }
      } catch (error) {
        console.log(error);
      }
    };
    fetchDataCart();
    return () => {
      fetchDataCart();
    };
  }, [statusToken]);

  // kiểm tra cartList ở local storage khi render lại trang
  useEffect(() => {
    const data = localStorage.getItem("cart");
    const response = data !== null ? JSON.parse(data) : [];
    setCartList(response);
  }, []);

  // kiểm tra số lượng item trong cart khi render
  useEffect(() => {
    const item = cartList.length;
    setItemAmout(item);
  }, [cartList]);

  // update lại local storage khi state cartList thay đổi
  useEffect(() => {
    localStorage.setItem("cart", JSON.stringify(cartList));
  }, [cartList]);

  return (
    <Router>
      <Header
        openCart={openCart}
        itemAmount={itemAmout}
        statusToken={statusToken}
      />

      <OverPlay statusCart={statusCart} closeCart={closeCart} />
      <CartModal
        statusCart={statusCart}
        closeCart={closeCart}
        cartList={cartList}
        handleUpdateProduct={handleUpdateProduct}
      />
      <DialogComment isOpenDialog={isOpenDialog} />

      <div className="main">
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Redirect from="/trangchu" to="/">
            <Home />
          </Redirect>
          <Route exact path="/dangnhap">
            <Login handleLogin={handleLogin} />
          </Route>
          <Route exact path="/dangky">
            <Register />
          </Route>
          <Route exact path="/quenmatkhau">
            <Forgotpass />
          </Route>
          <Route path="/thongtintaikhoan">
            <Account
              statusToken={statusToken}
              openDialog={openDialog}
              handleLogout={handleLogout}
            />
          </Route>
          <Route path="/sanpham">
            <Product />
          </Route>
          <Route exact path="/sanphamchitiet/:id">
            <WrapProductDetai handleAddProduct={handleAddProduct} />
          </Route>
          <Route exact path="/maxacnhan">
            <Maxacnhan />
          </Route>
          <Route exact path="/resetpass">
            <Resetpass />
          </Route>
          <Route exact path="/thanhtoan">
            <Order />
          </Route>
          <Route>
            <Error />
          </Route>
        </Switch>
      </div>
      <Footer />
    </Router>
  );
}

export default App;
