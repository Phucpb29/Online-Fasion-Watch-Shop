import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import productApi from "../../../api/productApi";
import movado from "../../../assets/image/movado.jpg";
import omega from "../../../assets/image/omega.jpg";

function MaleBestSeller() {
  // danh sách sản phẩm bán chạy
  const [bestSellerList, setBestSellerList] = useState([]);
  const [indexImage, setIndexImage] = useState("");
  useEffect(() => {
    const fetchData = async () => {
      const response = await productApi.getBestSellerMale();
      setBestSellerList(response.data);
    };
    fetchData();
    return () => {
      fetchData();
    };
  }, []);

  return (
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
        {bestSellerList.map((item, index) => (
          <div className="product__detail" key={index}>
            <div className="product__img">
              <img src={omega} alt="" />
            </div>
            <div className="product__name">
              <h3>{item.name}</h3>
            </div>
            <div className="product__price">
              <span>
                {new Intl.NumberFormat("vi-VN", {
                  style: "currency",
                  currency: "VND",
                }).format(item.price)}
              </span>
            </div>
            <div className="product__button">
              <Link
                to={`/sanphamchitiet/${item.id}`}
                className="product__button-link"
              >
                <span>XEM SẢN PHẨM</span>
              </Link>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default MaleBestSeller;
