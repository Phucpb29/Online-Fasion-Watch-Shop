import React from "react";
import PropTypes from "prop-types";

OverPlay.propTypes = {
  isOpenCart: PropTypes.bool,
  openCart: PropTypes.func,
};

function OverPlay(props) {
  const { isOpenCart, openCart } = props;

  const handleOpenCart = () => {
    if (openCart) {
      openCart();
    }
  };
  return (
    <div
      className={isOpenCart ? "overplay overplay__active" : "overplay"}
      onClick={handleOpenCart}
    ></div>
  );
}

export default OverPlay;
