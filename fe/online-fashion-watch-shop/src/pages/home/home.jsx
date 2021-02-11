import React from "react";
import { Link } from "react-router-dom";
import "./css/home.css";

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
          <Link to="" className="link__product">
            <span>MUA NGAY</span>
          </Link>
        </div>
        <div className="shop__link shop__woman">
          <p className="link__title">ĐỒNG HỒ NỮ</p>
          <Link to="" className="link__product">
            <span>MUA NGAY</span>
          </Link>
        </div>
      </div>
      <div className="home__seller"></div>
      <div className="home__news"></div>
      <div className="home__seller"></div>
      <div className="home__about"></div>
    </div>
  );
}

export default Home;
