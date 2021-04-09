import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../../../components/error/error";
import ProductDetail from "./detail";
import PropTypes from "prop-types";

WrapProductDetai.prototype = {
  handleAddProduct: PropTypes.func,
  handleLikeProduct: PropTypes.func,
};

WrapProductDetai.DefaultPropTypes = {
  handleAddProduct: null,
  handleLikeProduct: null,
};

function WrapProductDetai(props) {
  const { handleAddProduct, handleLikeProduct } = props;
  const params = useParams();
  var intParams = Number(params.id);

  function addProduct() {
    if (handleAddProduct) {
      handleAddProduct();
    }
  }

  function likeProduct() {
    if (handleLikeProduct) {
      handleLikeProduct();
    }
  }

  return (
    <div>
      {isNaN(intParams) ? (
        <Error />
      ) : (
        <ProductDetail
          id={intParams}
          addProduct={addProduct}
          likeProduct={likeProduct}
        />
      )}
    </div>
  );
}

export default WrapProductDetai;
