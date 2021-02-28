import React, { useState } from "react";
import {
  BrowserRouter as Router,
  Redirect,
  Route,
  Switch,
} from "react-router-dom";
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
import Product from "./pages/product/product";
import Register from "./pages/register/register";
import Resetpass from "./pages/resetpass/resetpass";

function App() {
  const [isOpenCart, setIsOpenCart] = useState(false);

  const openCart = () => {
    setIsOpenCart(!isOpenCart);
  };

  return (
    <Router>
      <Header openCart={openCart} />
      <OverPlay isOpenCart={isOpenCart} openCart={openCart} />
      <CartModal isOpenCart={isOpenCart} openCart={openCart} />
      <div className="main">
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Redirect from="/trangchu" to="/">
            <Home />
          </Redirect>
          <Route path="/dangnhap">
            <Login />
          </Route>
          <Route path="/dangky">
            <Register />
          </Route>
          <Route path="/quenmatkhau">
            <Forgotpass />
          </Route>
          <Route exact path="/thongtintaikhoan">
            <Account />
          </Route>
          <Route path="/sanpham">
            <Product />
          </Route>
          <Route path="/maxacnhan">
            <Maxacnhan />
          </Route>
          <Route path="/resetpass">
            <Resetpass />
          </Route>
          <Route path="/thanhtoan">
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
