import "boxicons";
import React from "react";
import { Link } from "react-router-dom";
import About from "./components/about";
import "./css/home.css";
import FemaleBestSeller from "./components/female-bestSeller";
import MaleBestSeller from "./components/male-bestSeller";

function Home() {
  return (
    <div className="main__home">
      <div className="home__banner">
        <h2 className="banner__title">Rolex</h2>
        <p className="banner__content">A crown for every achievement</p>
        <div className="banner__link">
          <Link to="" className="link__product">
            <span>MUA NGAY</span>
          </Link>
        </div>
      </div>
      <div className="home__shop">
        <div className="shop__link shop__man">
          <p className="link__title">ĐỒNG HỒ NAM</p>
          <Link to="/sanpham/gioitinh/nam" className="link__product">
            <span>MUA NGAY</span>
            <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
          </Link>
        </div>
        <div className="shop__link shop__woman">
          <p className="link__title">ĐỒNG HỒ NỮ</p>
          <Link to="/sanpham/gioitinh/nu" className="link__product">
            <span>MUA NGAY</span>
            <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
          </Link>
        </div>
      </div>
      <MaleBestSeller />
      <FemaleBestSeller />
      <About />
    </div>
  );
}

export default Home;
