import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Redirect,
  Route,
  Switch,
} from "react-router-dom";
import cartApi from "./api/cartApi";
import wishlistApi from "./api/wishlistApi";
import CartModal from "./components/cart/cart";
import Error from "./components/error/error";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";
import OverPlay from "./components/overplay/overplay";
import Account from "./pages/account/account";
import Forgotpass from "./pages/forgotpass/forgotpass";
import Home from "./pages/home/home";
import Login from "./pages/login/login";
import Maxacnhan from "./pages/maxacnhan/maxacnhan";
import Order from "./pages/order/order";
import WrapProductDetai from "./pages/product/components/product-detail/wrap-productdetail";
import WrapProductSearch from "./pages/product/components/product-search/wrap-productsearch";
import Product from "./pages/product/product";
import Register from "./pages/register/register";
import Resetpass from "./pages/resetpass/resetpass";
import WishList from "./pages/wishlist/wishlist";

function App() {
  const [cartList, setCartList] = useState([]); // giỏ hàng database
  const [cartLocal, setCartLocal] = useState([]); // giỏ hàng local storage
  const [cartChange, setCartChange] = useState(false);
  const [statusCart, setStatusCart] = useState(false);
  const [cartListSize, setCartListSize] = useState(0);

  // danh sách yêu thích
  const [wishList, setWishList] = useState([]);
  const [wishChange, setWishChange] = useState(false);
  const [wishListSize, setWishListSize] = useState(0);

  // token
  const [statusToken, setStatusToken] = useState(false);

  /* tương tác đóng mở giỏ hàng */
  const openCart = () => {
    setStatusCart(true);
    document.body.style.overflow = "hidden";
  };
  const closeCart = () => {
    setStatusCart(false);
    document.body.style.overflow = "unset";
  };
  /* tương tác đóng mở giỏ hàng */

  /* đăng nhập và đăng xuất */
  function handleLogin() {
    setStatusToken(true);
  }
  function handleLogout() {
    setStatusToken(false);
  }
  // render lại value token khi statusToken thay đổi
  useEffect(() => {
    const response = sessionStorage.getItem("accessToken");
    const data = response !== null ? true : false;
    setStatusToken(data);
  }, [statusToken]);
  /* đăng nhập và đăng xuất */

  /* giỏ hàng */
  // tạo giỏ hàng khi vào trang
  useEffect(() => {
    const fetchData = async () => {
      const response = localStorage.getItem("cartLocal");
      const data = response !== null ? JSON.parse(response) : [];
      setCartLocal(data);
    };
    fetchData();
  }, []);

  // render giỏ hàng khi đăng nhập
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const responseCart = await cartApi.viewCart();
        if (responseCart !== null) {
          const data = responseCart.data;
          setCartList(data);
        } else {
          const responseCart = await cartApi.createCart();
          const data = responseCart.data;
          setCartList(data);
        }
      }
    };
    fetchData();
  }, [statusToken]);
  /* giỏ hàng */

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
        cartList={cartList}
        cartLocal={cartLocal}
        statusCart={statusCart}
        cartChange={cartChange}
        statusToken={statusToken}
        closeCart={closeCart}
        // handleChangeCart={handleChangeCart}
      />
      <div className="main">
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Redirect from="/trangchu" to="/">
            <Home />
          </Redirect>
          <Redirect from="/trang-chu" to="/">
            <Home />
          </Redirect>
          <Route exact path="/dang-nhap">
            <Login handleLogin={handleLogin} />
          </Route>
          <Route exact path="/dang-ky">
            <Register />
          </Route>
          <Route exact path="/quen-mat-khau">
            <Forgotpass />
          </Route>
          <Route path="/thong-tin-tai-khoan">
            <Account statusToken={statusToken} handleLogout={handleLogout} />
          </Route>
          <Route exact path="/san-pham/gioi-tinh/nam">
            <Product />
          </Route>
          <Route exact path="/san-pham/gioi-tinh/nu">
            <Product />
          </Route>
          <Route exact path="/san-pham-chi-tiet/:id">
            <WrapProductDetai
              statusToken={statusToken}
              cartChange={cartChange}
              wishChange={wishChange}
              openCart={openCart}
              // handleChangeCart={handleChangeCart}
              // handleChangeWishList={handleChangeWishList}
            />
          </Route>
          <Route exact path="/san-pham-yeu-thich">
            <WishList
              statusToken={statusToken}
              wishChange={wishChange}
              // handleChangeWishList={handleChangeWishList}
            />
          </Route>
          <Route exact path="/tim-kiem-san-pham/:keyword">
            <WrapProductSearch />
          </Route>
          <Route exact path="/maxacnhan">
            <Maxacnhan />
          </Route>
          <Route path="/resetpass/*">
            <Resetpass />
          </Route>
          <Route exact path="/thanh-toan">
            <Order
              cartChange={cartChange}
              // handleChangeCart={handleChangeCart}
            />
          </Route>
          <Route>
            <Error text={"KHÔNG TÌM THẤY TRANG. VUI LÒNG THỬ LẠI"} />
          </Route>
        </Switch>
      </div>
      <Footer />
    </Router>
  );
}

export default App;
