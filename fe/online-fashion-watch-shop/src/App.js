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
import ProductSearch from "./pages/product/components/product-search/product-search";
import WrapProductSearch from "./pages/product/components/product-search/wrap-productsearch";

function App() {
  const [cartListSize, setCartListSize] = useState(0);
  const [wishListSize, setWishListSize] = useState(0);
  const [cartChange, setCartChange] = useState(false);
  const [wishChange, setWishChange] = useState(false);
  const [statusCart, setStatusCart] = useState(false);
  const [isOpenDialog, setIsOpenDiaglog] = useState(false);
  const [statusToken, setStatusToken] = useState(false);
  const [keyword, setKeyword] = useState("");

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
  }

  // render lại value khi token thay đổi
  useEffect(() => {
    const response = sessionStorage.getItem("accessToken");
    const data = response !== null ? true : false;
    setStatusToken(data);
  }, [statusToken]);
  /* đăng nhập và đăng xuất */

  /* sản phẩm yêu thích */
  // render lại số lượng sản phẩm yêu thích khi wishChange thay đổi
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await wishlistApi.getAll();
        const data = response.data;
        setWishListSize(data.length);
      }
    };
    fetchData();
  });

  // yêu thích sản phẩm
  function handleLikeProduct() {
    setWishChange(!wishChange);
  }
  /* sản phẩm yêu thích */

  /* giỏ hàng */
  // render lại số lượng giỏ hàng khi cartChange thay đổi
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await cartApi.viewCart();
        const data = response.data;
        setCartListSize(data.length);
      }
    };
    fetchData();
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

  /* tìm kiếm */
  // tìm kiếm theo tên
  function handleSearchKeyword(keyword) {
    setKeyword(keyword);
  }
  /* tìm kiếm */

  return (
    <Router>
      <Header
        openCart={openCart}
        statusToken={statusToken}
        cartListSize={cartListSize}
        wishListSize={wishListSize}
        handleSearchKeyword={handleSearchKeyword}
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
          <Route exact path="/sanpham/gioitinh/nam">
            <Product />
          </Route>
          <Route exact path="/sanpham/gioitinh/nu">
            <Product />
          </Route>
          <Route exact path="/sanphamchitiet/:id">
            <WrapProductDetai
              handleAddProduct={handleAddProduct}
              handleLikeProduct={handleLikeProduct}
            />
          </Route>
          <Route exact path="/sanphamyeuthich">
            <WishList statusToken={statusToken} wishChange={wishChange} />
          </Route>
          <Route exact path="/timkiemsanpham/:keyword">
            <WrapProductSearch />
          </Route>
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
