import React from "react";
import { Link } from "react-router-dom";
import "./css/error.css";

function Error() {
  return (
    <div className="main__error">
      <div className="main__error-box main__error-title">
        <h3>Oops! :(</h3>
      </div>
      <div className="main__error-box main__error-content">
        <p>Không tìm thấy trang</p>
        <p>Nhấp nút quay lại để trở về trang chủ</p>
      </div>
      <div className="main__error-box main__error-back">
        <Link to="/" className="back__link">
          <span>QUAY LẠI</span>
        </Link>
      </div>
    </div>
  ); 
}

export default Error;
