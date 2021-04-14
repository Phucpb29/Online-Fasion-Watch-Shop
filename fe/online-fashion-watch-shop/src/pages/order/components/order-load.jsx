import React from "react";
import PropTypes from "prop-types";
import LoadingOverplay from "../../../components/loading/loading";

OrderLoad.propTypes = {
  orderLoading: PropTypes.bool,
};

function OrderLoad(props) {
  const { orderLoading } = props;
  return (
    <div
      className={
        orderLoading ? "order__loading order__loading-active" : "order__loading"
      }
    >
      <LoadingOverplay />
    </div>
  );
}

export default OrderLoad;
