import React from "react";
import "./css/product-error.css";
import PropTypes from "prop-types";

ProductError.prototype = {
  handleClearAllFilter: PropTypes.func,
};

ProductError.DefaultPropTypes = {
  handleClearAllFilter: null,
};
function ProductError(props) {
  const { handleClearAllFilter } = props;

  function clearAllFilter() {
    if (handleClearAllFilter) {
      handleClearAllFilter();
    }
  }
  return (
    <div className="product__body">
      <div className="product__body-box">
        <div className="box__item">
          <div className="box__item-text">
            <p>KHÔNG TÌM THẤY SẢN PHẨM TƯƠNG ỨNG</p>
          </div>
          <div className="box__item-remove">
            <button className="remove__button" onClick={clearAllFilter}>
              <span>XOÁ LỌC</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}

export default ProductError;
