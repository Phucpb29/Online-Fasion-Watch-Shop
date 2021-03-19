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
  const [isOpenCart, setIsOpenCart] = useState(false);
  const [isOpenDialog, setIsOpenDiaglog] = useState(false);

  const openCart = () => {
    setIsOpenCart(!isOpenCart);
  };

  const openDialog = () => {
    setIsOpenDiaglog(!isOpenDialog);
  };

  return (
    <Router>
      <Header openCart={openCart} />

      <OverPlay isOpenCart={isOpenCart} openCart={openCart} />
      <CartModal isOpenCart={isOpenCart} openCart={openCart} />
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
            <Login />
          </Route>
          <Route exact path="/dangky">
            <Register />
          </Route>
          <Route exact path="/quenmatkhau">
            <Forgotpass />
          </Route>
          <Route path="/thongtintaikhoan">
            <Account openDialog={openDialog} />
          </Route>
          <Route path="/sanpham">
            <Product />
          </Route>
          <Route exact path="/sanphamchitiet/:id">
            <WrapProductDetai />
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
