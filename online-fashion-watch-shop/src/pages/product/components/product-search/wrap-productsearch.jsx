import { stringify } from "query-string";
import React from "react";
import { useParams } from "react-router-dom";
import Error from "../../../../components/error/error";
import ProductSearch from "./product-search";

function WrapProductSearch(props) {
  const { keyword } = useParams();
  return (
    <div>
      {keyword.length <= 0 ? <Error /> : <ProductSearch keyword={keyword} />}
    </div>
  );
}

export default WrapProductSearch;
