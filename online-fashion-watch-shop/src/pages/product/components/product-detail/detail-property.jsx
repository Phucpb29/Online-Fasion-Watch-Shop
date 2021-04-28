import PropTypes from "prop-types";
import React from "react";

DetailProperty.propTypes = {
  propertyList: PropTypes.array,
};

function DetailProperty(props) {
  const { propertyList } = props;

  return (
    <div className="product__property">
      <div className="property__title">
        <span>THÔNG SỐ KĨ THUẬT</span>
      </div>
      <div className="property__content">
        {propertyList.map((item) => (
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
