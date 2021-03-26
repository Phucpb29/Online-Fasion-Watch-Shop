import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../components/error/error";
import ProductDetail from "./product-detail/detail";
import PropTypes from "prop-types";

WrapProductDetai.prototype = {
  handleAddProduct: PropTypes.func,
};

function WrapProductDetai(props) {
  const { handleAddProduct } = props;
  const params = useParams();
  var intParams = Number(params.id);

  function handleClickAdd(product) {
    if (handleAddProduct) {
      handleAddProduct(product);
    }
  }

  return (
    <div>
      {isNaN(intParams) ? (
        <Error />
      ) : (
        <ProductDetail id={intParams} handleClickAdd={handleClickAdd} />
      )}
    </div>
  );
}

export default WrapProductDetai;
