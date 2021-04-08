import PropTypes from "prop-types";
import React from "react";
import NumberFormat from "react-number-format";
import "./css/gender.css";

ProductGender.prototype = {
  data: PropTypes.array,
};

function ProductGender(props) {
  const { data } = props;
  return (
    <>
      <div className="product__top">
        <div className="product__top-left">
          <div className="product__quantity">
            <span>8 sản phẩm</span>
          </div>
        </div>
        <div className="product__top-right">
          <span>Sắp xếp: </span>
          <div className="product__sort">
            <select className="sort__list">
              <option className="sort__item">Tên: A - Z</option>
              <option className="sort__item">Tên: Z - A</option>
              <option className="sort__item">Giá: thấp - cao</option>
              <option className="sort__item">Giá: cao - thấp</option>
            </select>
          </div>
        </div>
      </div>
      <div className="product__body">
        <ul className="list__product">
          {data.map((product) => (
            <li key={product.id} className="product__item">
              <div className="product__card">
                <div className="product__card-detail">
                  <div className="product__img">
                    <img src={product.imgURL} alt="" />
                  </div>
                  <div className="product__name">
                    <p>{product.name}</p>
                  </div>
                  <div className="product__price">
                    <NumberFormat
                      value={product.price}
                      displayType="text"
                      thousandSeparator={true}
                    />
                    đ
                  </div>
                  <div className="product__button">
                    <a href="/" className="button__link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </div>
            </li>
          ))}
          {/* <li className="product__item">
            <div className="product__card">
              <div className="product__card-detail">
                <div className="product__img">
                  <img src={data[0].imgURL} alt="" />
                </div>
                <div className="product__name">
                  <p>{data[0].name}</p>
                </div>
                <div className="product__price">
                  <NumberFormat
                    value={data[0].price}
                    displayType="text"
                    thousandSeparator={true}
                  />
                  đ
                </div>
                <div className="product__button">
                  <a href="/" className="button__link">
                    <span>XEM SẢN PHẨM</span>
                  </a>
                </div>
              </div>
            </div>
          </li> */}
        </ul>
      </div>
    </>
  );
}

export default ProductGender;
