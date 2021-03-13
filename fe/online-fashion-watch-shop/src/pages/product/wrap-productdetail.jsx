import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../components/error/error";
import ProductDetail from "./product-detail/detail";

function WrapProductDetai() {
  const params = useParams();
  var intParams = Number(params.id);
  return <div>{isNaN(intParams) ? <Error /> : <ProductDetail />}</div>;
}

export default WrapProductDetai;
