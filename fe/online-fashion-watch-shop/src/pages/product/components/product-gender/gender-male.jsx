import PropTypes from "prop-types";
import React from "react";
import "./css/gender.css";

GenderMale.prototype = {
  listMale: PropTypes.array,
  handleSortItem: PropTypes.func,
};

function GenderMale(props) {
  const { listMale, handleSortItem } = props;

  function handleChangeSelection(e) {
    if (handleSortItem) {
      handleSortItem(e.target.value);
    }
  }

  return (
    <div>
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
              <select className="sort__list" onChange={handleChangeSelection}>
                <option className="sort__item" value="ASC">
                  Tên: A - Z
                </option>
                <option className="sort__item" value="DESC">
                  Tên: Z - A
                </option>
                <option className="sort__item" value="MIN">
                  Giá: thấp - cao
                </option>
                <option className="sort__item" value="MAX">
                  Giá: cao - thấp
                </option>
              </select>
            </div>
          </div>
        </div>
        <div className="product__body">
          <ul className="list__product">
            {listMale.map((item, index) => (
              <li key={item.product.id} className="product__item">
                <div className="product__card">
                  <div className="product__card-detail">
                    <div className="product__img">
                      <img src={item.indexImage} alt="" />
                    </div>
                    <div className="product__name">
                      <p>{item.product.name}</p>
                    </div>
                    <div className="product__price">
                      {new Intl.NumberFormat("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      }).format(item.product.price)}
                    </div>
                    <div className="product__button">
                      <a
                        href={`/sanphamchitiet/${item.product.id}`}
                        className="button__link"
                      >
                        <span>XEM SẢN PHẨM</span>
                      </a>
                    </div>
                  </div>
                </div>
              </li>
            ))}
          </ul>
        </div>
      </>
    </div>
  );
}

export default GenderMale;
