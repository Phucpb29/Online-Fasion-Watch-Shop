import PropTypes from "prop-types";
import React, { useState } from "react";
import "./css/product-sidebar.css";

SideBar.propTypes = {
  brands: PropTypes.object,
  cords: PropTypes.object,
  handleCheckValue: PropTypes.func,
  handleChangePrice: PropTypes.func,
};

SideBar.DefaultPropTypes = {
  brands: {},
  cords: {},
  handleCheckValue: null,
  handleChangePrice: null,
};

function SideBar(props) {
  const { brands, cords, handleCheckValue, handleChangePrice } = props;
  const newArray = [brands, cords];
  const [price, setPrice] = useState(0);

  const handleCheckBox = (e) => {
    const { value, checked } = e.target;
    if (handleCheckValue) {
      handleCheckValue(value, checked);
    }
  };

  // thay đổi giá khi thả ra
  function handleRangeInput() {
    if (handleChangePrice) {
      handleChangePrice(price);
    }
  }

  // set giá khi kéo
  const handleChangePriceInput = (e) => {
    setPrice(e.target.value);
  };

  return (
    <div className="sidebar__filter">
      {newArray.map((item, index) => (
        <div className="filter__brand" key={index}>
          <p>{item.propertyRootName}</p>
          <ul className="brand__list">
            {item.propertyDetail.map((item, index) => (
              <li className="brand__list-item" key={index}>
                <input type="checkbox" value={item} onClick={handleCheckBox} />
                <span>{item}</span>
              </li>
            ))}
          </ul>
        </div>
      ))}
      <div className="filter__price">
        <p>Giá</p>
        <div className="price__list">
          <div className="price__list-item">
            <p className="price__min">
              {new Intl.NumberFormat("vi-VN", {
                style: "currency",
                currency: "VND",
              }).format(price)}
            </p>
            <p className="price__max">50.000.000 đ</p>
          </div>
          <input
            min="0"
            max="50000000"
            step="1"
            type="range"
            value={price}
            onChange={handleChangePriceInput}
            onMouseUp={handleRangeInput}
          />
        </div>
      </div>
    </div>
  );
}

export default SideBar;
