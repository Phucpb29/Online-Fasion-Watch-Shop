import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../../../components/error/error";
import ProductDetail from "./detail";
import PropTypes from "prop-types";

WrapProductDetai.prototype = {
  handleAddProduct: PropTypes.func,
};

WrapProductDetai.DefaultPropTypes = {
  handleAddProduct: null,
};

function WrapProductDetai(props) {
  const { handleAddProduct } = props;
  const params = useParams();
  var intParams = Number(params.id);

  function addProduct() {
    if (handleAddProduct) {
      handleAddProduct();
    }
  }
  return (
    <div>
      {isNaN(intParams) ? (
        <Error />
      ) : (
        <ProductDetail id={intParams} addProduct={addProduct} />
      )}
    </div>
  );
}

export default WrapProductDetai;
