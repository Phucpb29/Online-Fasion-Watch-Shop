import PropTypes from "prop-types";
import React from "react";
import "./css/detail.css";
import DetailComment from "./components/detail-comment";
import DetailInfo from "./components/detail-info";
import DetailProperty from "./components/detail-property";

ProductDetail.prototype = {
  id: PropTypes.string,
};

function ProductDetail(props) {
  const { id } = props;

  return (
    <div className="main__product">
      <DetailInfo id={id} />
      <DetailProperty id={id} />
      <DetailComment />
    </div>
  );
}

export default ProductDetail;
