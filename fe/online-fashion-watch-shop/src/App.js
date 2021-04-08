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
import wishlistApi from "./api/wishlistApi";
import CartModal from "./components/cart/cart";
import Error from "./components/error/error";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";
import OverPlay from "./components/overplay/overplay";
import Account from "./pages/account/account";
import DialogComment from "./pages/account/components/dialog-comment/dialog";
import Forgotpass from "./pages/forgotpass/forgotpass";
import Home from "./pages/home/home";
import Login from "./pages/login/login";
import Maxacnhan from "./pages/maxacnhan/maxacnhan";
import Order from "./pages/order/order";
import Product from "./pages/product/product";
import WrapProductDetai from "./pages/product/components/product-detail/wrap-productdetail";
import Register from "./pages/register/register";
import Resetpass from "./pages/resetpass/resetpass";
import WishList from "./pages/wishlist/wishlist";

function App() {
  const [cartList, setCartList] = useState([]);
  const [wishList, setWishList] = useState([]);
  const [cartListSize, setCartListSize] = useState(0);
  const [wishListSize, setWishListSize] = useState(0);
  const [cartChange, setCartChange] = useState(false);
  const [statusCart, setStatusCart] = useState(false);
  const [isOpenDialog, setIsOpenDiaglog] = useState(false);
  const [statusToken, setStatusToken] = useState(false);

  /* tương tác đóng mở giỏ hàng */
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
  /* tương tác đóng mở giỏ hàng */

  /* tương tác đóng mở đánh giá sản phẩm */
  // mở dialog
  const openDialog = () => {
    setIsOpenDiaglog(!isOpenDialog);
  };
  /* tương tác đóng mở đánh giá sản phẩm */

  /* đăng nhập và đăng xuất */
  // đăng nhập tài khoản
  function handleLogin() {
    setStatusToken(true);
  }

  // đăng xuất tài khoản
  function handleLogout() {
    setStatusToken(false);
    setCartList([]);
  }

  // render lại value khi token thay đổi
  useEffect(() => {
    const response = sessionStorage.getItem("accessToken");
    const data = response !== null ? true : false;
    setStatusToken(data);
  }, [statusToken]);
  /* đăng nhập và đăng xuất */

  /* sản phẩm yêu thích */
  // lấy danh sách sản phẩm yêu thích khi đăng nhập
  useEffect(() => {
    const fetchData = async () => {
      const response = await wishlistApi.getAll();
      const data = response.data;
      setWishList(data);
      setWishListSize(data.length);
    };
    if (statusToken) {
      fetchData();
    }
    return () => {
      fetchData();
    };
  }, [statusToken]);

  // render lại wishlist local storage khi wishList thay đổi
  useEffect(() => {
    if (statusToken) {
      localStorage.setItem("wishList", JSON.stringify(wishList));
    }
  }, [wishList, statusToken]);

  // render lại số lượng sản phẩm yêu thích
  useEffect(() => {
    if (statusToken) {
      const response = localStorage.getItem("wishList");
      const data = response !== null ? JSON.parse(response) : [];
      setWishListSize(data.length);
    }
  }, [wishList, statusToken]);

  // thêm sản phẩm vào danh sách yêu thích
  function handleAddWishlist(idProduct) {
    try {
      // if (statusToken) {

      // } else {
      //   Swal.fire({
      //     title: "THÔNG BÁO",
      //     text: "BẠN CẦN PHẢI ĐĂNG NHẬP",
      //     icon: "error",
      //     showConfirmButton: true,
      //   });
      // }
      wishlistApi.like(idProduct).then(function (response) {
        if (response.status === 200) {
          console.log(response);
          Swal.fire({
            title: "THÔNG BÁO",
            text: "ĐÃ THÍCH SẢN PHẨM",
            icon: "success",
            showConfirmButton: true,
          });
        }
        if (response.status === 400) {
          Swal.fire({
            title: "THÔNG BÁO",
            text: "CÓ LỖI XẢY RA! VUI LÒNG THỬ LẠI",
            icon: "error",
            showConfirmButton: true,
          });
        }
      });
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "CÓ LỖI XẢY RA! VUI LÒNG THỬ LẠI",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }
  /* sản phẩm yêu thích */

  /* giỏ hàng */
  // render lại số lượng giỏ hàng khi cartChange thay đổi
  useEffect(() => {
    if (statusToken) {
      const fetchData = async () => {
        const response = await cartApi.viewCart();
        const data = response.data;
        setCartListSize(data.length);
      };
      fetchData();
    }
  }, [statusToken, cartChange]);

  // thêm sản phẩm
  function handleAddProduct() {
    setCartChange(!cartChange);
  }

  // xoá sản phẩm
  function handleDeleteProduct() {
    setCartChange(!cartChange);
  }

  // cập nhật số lượng sản phẩm
  function handleUpdateProduct() {
    setCartChange(!cartChange);
  }
  /* giỏ hàng */

  /* thanh toán */
  // thanh toán giỏ hàng
  function handleOrderCart() {
    setCartChange(!cartChange);
  }
  /* thanh toán */

  return (
    <Router>
      <Header
        openCart={openCart}
        statusToken={statusToken}
        cartListSize={cartListSize}
        wishListSize={wishListSize}
      />
      <OverPlay statusCart={statusCart} closeCart={closeCart} />
      <CartModal
        statusCart={statusCart}
        closeCart={closeCart}
        statusToken={statusToken}
        cartChange={cartChange}
        handleUpdateProduct={handleUpdateProduct}
        handleDeleteProduct={handleDeleteProduct}
      />
      <DialogComment isOpenDialog={isOpenDialog} />

      <div className="main">
        <Switch>
          <Route exact path="/">
            <Home handleAddWishlist={handleAddWishlist} />
          </Route>
          <Redirect from="/trangchu" to="/">
            <Home handleAddWishlist={handleAddWishlist} />
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
          <Route exact path="/sanpham/gioitinh/nam">
            <Product />
          </Route>
          <Route exact path="/sanpham/gioitinh/nu">
            <Product />
          </Route>
          <Route exact path="/sanphamchitiet/:id">
            <WrapProductDetai handleAddProduct={handleAddProduct} />
          </Route>
          <Route exact path="/sanphamyeuthich">
            <WishList wishList={wishList} />
          </Route>
          <Route exact path="/timkiemsanpham"></Route>
          <Route exact path="/maxacnhan">
            <Maxacnhan />
          </Route>
          <Route exact path="/resetpass">
            <Resetpass />
          </Route>
          <Route exact path="/thanhtoan">
            <Order handleOrderCart={handleOrderCart} />
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
