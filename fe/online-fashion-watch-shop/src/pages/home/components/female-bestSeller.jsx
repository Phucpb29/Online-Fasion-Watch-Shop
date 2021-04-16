import PropTypes from "prop-types";
import React from "react";
import { Link } from "react-router-dom";

FemaleBestSeller.prototype = {
  productList: PropTypes.array,
};

FemaleBestSeller.DefaultPropTypes = {
  productList: [],
};

function FemaleBestSeller(props) {
  const { productList } = props;

  return (
    <div className="home__seller">
      <div className="seller__title">
        <p>WOMEN'S BEST SELLERS</p>
      </div>
      <div className="seller__product">
        {productList.map((item, index) => (
          <div className="product__detail" key={index}>
            <div className="product__img">
              <img src={item.indexImage} alt="" />
            </div>
            <div className="product__name">
              <h3>{item.product.name}</h3>
            </div>
            <div className="product__price">
              {item.product.issale ? (
                <>
                  <span className="price">
                    {new Intl.NumberFormat("vi-VN", {
                      style: "currency",
                      currency: "VND",
                    }).format(item.product.price)}
                  </span>
                  <span className="price__sale">
                    {new Intl.NumberFormat("vi-VN", {
                      style: "currency",
                      currency: "VND",
                    }).format(item.product.price_sale)}
                  </span>
                </>
              ) : (
                <p>
                  {new Intl.NumberFormat("vi-VN", {
                    style: "currency",
                    currency: "VND",
                  }).format(item.product.price)}
                </p>
              )}
            </div>
            <div className="product__button">
              <Link
                to={`/san-pham-chi-tiet/${item.product.id}`}
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

export default FemaleBestSeller;
