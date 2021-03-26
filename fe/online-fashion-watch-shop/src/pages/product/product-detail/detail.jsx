import PropTypes from "prop-types";
import React from "react";
import DetailComment from "./components/detail-comment";
import DetailInfo from "./components/detail-info";
import DetailProperty from "./components/detail-property";
import "./css/detail.css";

ProductDetail.prototype = {
  id: PropTypes.string,
  handleClickAdd: PropTypes.func,
};

function ProductDetail(props) {
  const { id, handleClickAdd } = props;

  function addProduct(product) {
    if (handleClickAdd) {
      handleClickAdd(product);
    }
  }

  return (
    <div className="main__product">
      <DetailInfo id={id} addProduct={addProduct} />
      <DetailProperty id={id} />
      <DetailComment id={id} />
    </div>
  );
}

export default ProductDetail;
