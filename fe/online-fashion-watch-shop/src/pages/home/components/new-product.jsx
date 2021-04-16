import React from "react";
import { Link } from "react-router-dom";
import newsProduct from "../../../assets/image/news-product-home.png";

function ProductNews() {
  return (
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
            Đồng hồ Rolex Submariner chất liệu thép Oyster có mặt số màu đen và
            vành đồng hồ xoay kết hợp hài hòa với miếng lót Cerachrom. Đồng hồ
            đích thực dành cho thợ lặn.
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
  );
}

export default ProductNews;
