import React from "react";
import "./css/forgotpass.css";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
function forgotpass() {
  return (
    <div className="forgotpass">
      <div className="forgotpass__box">
        <a href="/trangchu" className="forgotpass__logo">
          <img src={logoDw} alt="" />
        </a>
        <div className="forgotpass__text">
          <span>
            Nhập email tài khoản của bạn để nhận mã xác nhận thay đổi mật khẩu
            mới
          </span>
        </div>
        <div className="link">
          <span>Bạn đã nhớ mật khẩu? </span>
          <a href="/dangnhap">Quay lại đăng nhập</a>
        </div>
        <div className="forgotpass__form">
          <form className="form">
            <div className="form__control">
              <box-icon name="mail-send"></box-icon>
              <input type="text" placeholder="Email" />
            </div>
            <button className="button">GỬI MÃ</button>
          </form>
        </div>
      </div>
    </div>
  );
}
export default forgotpass;
