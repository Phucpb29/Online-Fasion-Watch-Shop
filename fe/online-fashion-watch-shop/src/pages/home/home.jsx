import "boxicons";
import React from "react";
import { Link } from "react-router-dom";
import "./css/home.css";
import movado from "../../assets/image/movado.jpg";

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
            <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
          </Link>
        </div>
        <div className="shop__link shop__woman">
          <p className="link__title">ĐỒNG HỒ NỮ</p>
          <Link to="" className="link__product">
            <span>MUA NGAY</span>
            <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
          </Link>
        </div>
      </div>
      <div className="home__seller">
        <div className="seller__title">
          <p>MEN'S BEST SELLERS</p>
        </div>
        <Link to="/" className="seller__link">
          <span>
            XEM THÊM
            <box-icon name="right-arrow-alt"></box-icon>
          </span>
        </Link>
        <div className="seller__product">
          <div className="product__detail">
            <div className="product__img">
              <img src={movado} alt="" />
            </div>
            <div className="product__name">
              <h3>MOVADO MOVADO</h3>
            </div>
            <div className="product__price">
              <span>10.000.000 đ</span>
            </div>
            <div className="product__button">
              <Link to="/" className="product__button-link">
                <span>XEM SẢN PHẨM</span>
              </Link>
            </div>
          </div>
          <div className="product__detail">
            <div className="product__img">
              <img src={movado} alt="" />
            </div>
            <div className="product__name">
              <h3>MOVADO</h3>
            </div>
            <div className="product__price"></div>
            <div className="product__button"></div>
          </div>
          <div className="product__detail">
            <div className="product__img">
              <img src={movado} alt="" />
            </div>
            <div className="product__name">
              <h3>MOVADO</h3>
            </div>
            <div className="product__price">
              <span>10.000.000 đ</span>
            </div>
            <div className="product__button"></div>
          </div>
          <div className="product__detail">
            <div className="product__img">
              <img src={movado} alt="" />
            </div>
            <div className="product__name">
              <h3>MOVADO</h3>
            </div>
            <div className="product__price"></div>
            <div className="product__button"></div>
          </div>
        </div>
      </div>
      <div className="home__news"></div>
      <div className="home__seller"></div>
      <div className="home__about"></div>
    </div>
  );
}

export default Home;
