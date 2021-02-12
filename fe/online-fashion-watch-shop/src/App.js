import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Error from "./components/error/error";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";
import Home from "./pages/home/home";
import Login from "./pages/login/login";
import Register from "./pages/register/register";
import ProductGender from "./pages/product/product-gender/gender";
import ProductCategory from "./pages/product/product-category/category";
import ProductBestSeller from "./pages/product/product-bestSeller/best-seller";
import ProductDetail from "./pages/product/product-detail/detail";
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
  return (
    <Router>
      <Header />
      <div className="main">
        <Switch>
          <Route exact path="/">
            <Home data={data} />
          </Route>
          <Route path="/dangnhap">
            <Login />
          </Route>
          <Route path="/dangky">
            <Register />
          </Route>
          <Route path="/sanpham/gioitinh">
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
          <Route path="/*">
            <Error />
          </Route>
        </Switch>
      </div>
      <Footer />
    </Router>
  );
}

export default App;
