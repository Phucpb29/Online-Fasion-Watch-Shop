import React from "react";
import "./css/navbar.css";

Navbar.propTypes = {};

function Navbar(props) {
  return (
    <>
      <div className="filter__brand">
        <p>Thương hiệu</p>
        <ul className="brand__list">
          <li className="brand__list-item">
            <input type="checkbox" />
            <span>Tên thương hiệu</span>
          </li>
          <li className="brand__list-item">
            <input type="checkbox" />
            <span>Tên thương hiệu</span>
          </li>
          <li className="brand__list-item">
            <input type="checkbox" />
            <span>Tên thương hiệu</span>
          </li>
          <li className="brand__list-item">
            <input type="checkbox" />
            <span>Tên thương hiệu</span>
          </li>
        </ul>
      </div>
      <div className="filter__gender">
        <p>Giới tính</p>
        <ul className="gender__list">
          <li className="gender__list-item">
            <input type="checkbox" />
            <span>Nam</span>
          </li>
          <li className="gender__list-item">
            <input type="checkbox" />
            <span>Nữ</span>
          </li>
        </ul>
      </div>
      <div className="filter__price">
        <p>Giá</p>
        <div className="price__list">
          <div className="price__list-item">
            <p className="price__min">0 </p>
            <p className="price__max">0</p>
          </div>
          <input min="0" max="50000" step="1" type="range" />
        </div>
      </div>
    </>
  );
}

export default Navbar;
