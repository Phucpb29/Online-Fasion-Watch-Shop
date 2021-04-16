import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../../../components/error/error";
import ProductDetail from "./detail";
import PropTypes from "prop-types";

WrapProductDetai.prototype = {
  statusToken: PropTypes.bool,
  cartChange: PropTypes.bool,
  wishChange: PropTypes.bool,
  openCart: PropTypes.func,
  handleChangeCart: PropTypes.func,
  handleChangeWishList: PropTypes.func,
};

WrapProductDetai.DefaultPropTypes = {
  statusToken: false,
  cartChange: false,
  wishChange: false,
  openCart: null,
  handleChangeCart: null,
  handleChangeWishList: null,
};

function WrapProductDetai(props) {
  const {
    statusToken,
    cartChange,
    wishChange,
    openCart,
    handleChangeCart,
    handleChangeWishList,
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
  function changeWishList() {
    if (handleChangeWishList) {
      handleChangeWishList();
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
          wishChange={wishChange}
          handleOpenCart={handleOpenCart}
          changeCart={changeCart}
          changeWishList={changeWishList}
        />
      )}
    </div>
  );
}

export default WrapProductDetai;
