import React, { useEffect, useState } from "react";
import productApi from "../../../../api/productApi";

DetailProperty.propTypes = {};

function DetailProperty(props) {
  const [propertyList, setPropertyList] = useState([]);

  // danh sách thuộc tính sản phẩm
  useEffect(() => {
    const fetchPropertyData = async () => {
      const response = await productApi.getPropertyRoot();
      setPropertyList(response.data);
    };
    fetchPropertyData();
  }, []);

  return (
    <div className="product__property">
      <div className="property__title">
        <span>THÔNG SỐ KĨ THUẬT</span>
      </div>
      <div className="property__content">
        {propertyList.map((item) => (
          <div className="content__box" key={item.id}>
            <div className="box__title">
              <span>{item.name}</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default DetailProperty;
