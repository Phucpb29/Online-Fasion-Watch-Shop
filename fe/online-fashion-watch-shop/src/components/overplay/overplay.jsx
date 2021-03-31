import React from "react";
import PropTypes from "prop-types";

OverPlay.propTypes = {
  statusCart: PropTypes.bool,
  closeCart: PropTypes.func,
};

function OverPlay(props) {
  const { statusCart, closeCart } = props;

  const handleCloseCart = () => {
    if (closeCart) {
      closeCart();
    }
  };
  return (
    <div
      className={statusCart ? "overplay overplay__active" : "overplay"}
      onClick={handleCloseCart}
    ></div>
  );
}

export default OverPlay;
