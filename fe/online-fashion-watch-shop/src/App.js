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
import Home from "./pages/home/home";
import Login from "./pages/login/login";
import ProductBestSeller from "./pages/product/product-bestSeller/best-seller";
import ProductCategory from "./pages/product/product-category/category";
import ProductDetail from "./pages/product/product-detail/detail";
import ProductGender from "./pages/product/product-gender/gender";
import Register from "./pages/register/register";
import Order from "./pages/order/order";
const data = [
  {
    id: 1,
    name: "Movado",
    price: 3000000,
  },
  {
    id: 2,
    name: "Rolex",
    price: 3000000,
  },
  {
    id: 3,
    name: "Ditriot",
    price: 3000000,
  },
  {
    id: 4,
    name: "Ted Hug",
    price: 3000000,
  },
];

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
            <Home data={data} />
          </Route>
          <Redirect from="/trangchu" to="/">
            <Home data={data} />
          </Redirect>
          <Route path="/dangnhap">
            <Login />
          </Route>
          <Route path="/dangky">
            <Register />
          </Route>
          <Route path="/sanpham/nam">
            <ProductGender />
          </Route>
          <Route path="/sanpham/banchay">
            <ProductBestSeller />
          </Route>
          <Route exact path="/sanpham/danhmuc">
            <ProductCategory />
          </Route>
          <Route path="/sanpham/sanphamchitiet/:id">
            <ProductDetail />
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
