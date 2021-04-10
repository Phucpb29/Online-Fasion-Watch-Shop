import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../../../components/error/error";
import ProductDetail from "./detail";
import PropTypes from "prop-types";

WrapProductDetai.prototype = {
  statusToken: PropTypes.bool,
  cartChange: PropTypes.bool,
  openCart: PropTypes.func,
  handleAddProduct: PropTypes.func,
  handleUpdateProduct: PropTypes.func,
  handleLikeProduct: PropTypes.func,
};

WrapProductDetai.DefaultPropTypes = {
  statusToken: false,
  cartChange: false,
  openCart: null,
  handleAddProduct: null,
  handleUpdateProduct: null,
  handleLikeProduct: null,
};

function WrapProductDetai(props) {
  const {
    statusToken,
    cartChange,
    openCart,
    handleAddProduct,
    handleUpdateProduct,
    handleLikeProduct,
  } = props;
  const params = useParams();
  var intParams = Number(params.id);

  // mở giỏ hàng
  function handleOpenCart() {
    if (openCart) {
      openCart();
    }
  }

  // thêm sản phẩm
  function addProduct() {
    if (handleAddProduct) {
      handleAddProduct();
    }
  }

  // cập nhất số lượng sản phẩm
  function updateProduct() {
    if (handleUpdateProduct) {
      handleUpdateProduct();
    }
  }

  // yêu thích sảng phẩm
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
          statusToken={statusToken}
          cartChange={cartChange}
          handleOpenCart={handleOpenCart}
          addProduct={addProduct}
          updateProduct={updateProduct}
          likeProduct={likeProduct}
        />
      )}
    </div>
  );
}

export default WrapProductDetai;
