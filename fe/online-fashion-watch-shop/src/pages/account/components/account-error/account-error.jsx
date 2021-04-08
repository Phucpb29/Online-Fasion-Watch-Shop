import React from "react";
import "./css/error.css";

function AccountError() {
  return (
    <div className="main__error">
      <div className="main__error-box main__error-title">
        <h3>Oops! :(</h3>
      </div>
      <div className="main__error-box main__error-content">
        <p>Bạn chưa đăng nhập</p>
        <p>Nhấp nút quay lại để trở về trang chủ</p>
      </div>
      <div className="main__error-box main__error-back">
        <a href="/" className="back__link">
          <span>QUAY LẠI</span>
        </a>
      </div>
    </div>
  );
}

export default AccountError;
