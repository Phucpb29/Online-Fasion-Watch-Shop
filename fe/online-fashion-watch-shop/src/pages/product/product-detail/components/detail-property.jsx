import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import productApi from "../../../../api/productApi";

DetailProperty.propTypes = {
  id: PropTypes.number,
};

function DetailProperty(props) {
  const { id } = props;

  // thuộc tính chi tiết sản phẩm
  const [propertyDetailList, setPropertyDetailList] = useState([]);
  useEffect(() => {
    const fecthProductDetailData = async () => {
      const response = await productApi.getPropertyRootById(id);
      setPropertyDetailList(response.data);
    };
    setTimeout(fecthProductDetailData(), 1500);
    return () => {
      clearTimeout(fecthProductDetailData());
    };
  }, [id]);

  return (
    <div className="product__property">
      <div className="property__title">
        <span>THÔNG SỐ KĨ THUẬT</span>
      </div>
      <div className="property__content">
        {propertyDetailList.map((item) => (
          <div className="content__box" key={item.product_Property.id}>
            <div className="box__title">
              <span>{item.product_Property.name}</span>
            </div>
            <div className="box__content">
              <span>{item.description}</span>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default DetailProperty;
