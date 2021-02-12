import "boxicons";
import React from "react";
import { Link } from "react-router-dom";
import movado from "../../assets/image/movado.jpg";
import newsProduct from "../../assets/image/news-product-home.png";
import aboutUs1 from "../../assets/image/home-aboutus-1.jpg";
import aboutUs2 from "../../assets/image/home-aboutus-2.jpg";
import aboutUs3 from "../../assets/image/home-aboutus-3.jpg";
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
          <Link to="/sanpham/nam" className="link__product">
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
        </div>
      </div>
      <div className="home__news">
        <div className="news__box news__img">
          <img src={newsProduct} alt="" />
        </div>
        <div className="news__box news__text">
          <div className="news__title">
            <h2>ROLEX SUBMARINER</h2>
          </div>
          <div className="news__content">
            <span>
              Đồng hồ Rolex Submariner chất liệu thép Oyster có mặt số màu đen
              và vành đồng hồ xoay kết hợp hài hòa với miếng lót Cerachrom. Đồng
              hồ đích thực dành cho thợ lặn.
            </span>
          </div>
          <div className="news__link">
            <Link to="" className="link__news">
              <span>KHÁM PHÁ NGAY</span>
              <box-icon name="right-arrow-alt"></box-icon>
            </Link>
          </div>
        </div>
      </div>
      <div className="home__seller">
        <div className="seller__title">
          <p>WOMEN'S BEST SELLERS</p>
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
        </div>
      </div>
      <div className="home__about">
        <div className="about__title">
          <p>ABOUT US</p>
        </div>
        <div className="about__text">
          <span>
            Cuối năm 2019, 3 chàng trai đam mê Startup và Đồng hồ quyết định
            thành lập Diamond Watches Fashion, nhưng ngay từ đầu, chúng tôi đã
            biết rằng: D.W sinh ra với một sứ mệnh lớn lao hơn, không chỉ dừng
            lại là một thương hiệu đồng hồ. Chúng tôi muốn mang tới một nguồn
            cảm hứng, một sự thay đổi về tư duy, về suy nghĩ và chính những cái
            chúng tôi gọi là trải nghiệm cho người trẻ.
          </span>
        </div>
        <div className="about__img">
          <div className="img__box">
            <img src={aboutUs1} alt="" />
          </div>
          <div className="img__box img__2">
            <img src={aboutUs2} alt="" />
          </div>
          <div className="img__box">
            <img src={aboutUs3} alt="" />
          </div>
        </div>
      </div>
    </div>
  );
}

export default Home;
