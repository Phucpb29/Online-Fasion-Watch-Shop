import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../../../components/error/error";
import ProductDetail from "./detail";
import PropTypes from "prop-types";

WrapProductDetai.prototype = {
  statusToken: PropTypes.bool,
  cartChange: PropTypes.bool,
  openCart: PropTypes.func,
  handleChangeCart: PropTypes.func,
  handleLikeProduct: PropTypes.func,
};

WrapProductDetai.DefaultPropTypes = {
  statusToken: false,
  cartChange: false,
  openCart: null,
  handleChangeCart: null,
  handleLikeProduct: null,
};

function WrapProductDetai(props) {
  const {
    statusToken,
    cartChange,
    openCart,
    handleChangeCart,
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

  // thay đổi giỏ hàng
  function changeCart() {
    if (handleChangeCart) {
      handleChangeCart();
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
          changeCart={changeCart}
          likeProduct={likeProduct}
        />
      )}
    </div>
  );
}

export default WrapProductDetai;
