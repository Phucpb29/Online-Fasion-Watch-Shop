import React from "react";
import PropTypes from "prop-types";
import "./css/product-sort.css";

Sort.propTypes = {
  handleChangeSort: PropTypes.func,
};

Sort.DefaultPropTypes = {
  handleChangeSort: null,
};

function Sort(props) {
  const { handleChangeSort } = props;
  function sortItem(e) {
    if (handleChangeSort) {
      handleChangeSort(e.target.value);
    }
  }
  return (
    <div className="product__top">
      <div className="product__top-left">
        <div className="product__quantity">
          <span>8 sản phẩm</span>
        </div>
      </div>
      <div className="product__top-right">
        <span>Sắp xếp: </span>
        <div className="product__sort">
          <select className="sort__list" onChange={sortItem}>
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
  );
}

export default Sort;
