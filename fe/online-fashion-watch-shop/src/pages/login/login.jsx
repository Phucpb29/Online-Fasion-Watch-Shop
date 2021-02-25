import React from "react";
import "./css/login.css";
import Imgleft from "../../assets/image/img-login.jpg";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
function login() {
  return (
    <div className="login">
      <div className="login__left">
        <div className="login__img">
          <img src={Imgleft} alt="Imgleft" />
        </div>
      </div>
      <div className="login__right">
        <a href="/" className="login__logo">
          <img src={logoDw} alt="" />
        </a>
        <div className="login__form">
          <form className="form__login">
            <div className="form__control">
              <box-icon name="mail-send"></box-icon>
              <input type="text" placeholder="Email" />
            </div>
            <div className="link">
              <div className="form__control">
                <box-icon name="lock-alt" type="solid"></box-icon>
                <input type="Password" placeholder="Password" />
              </div>
              <a href="/quenmatkhau" className="span">
                Quên mật khẩu?
              </a>
            </div>
            <div className="forget">
              <input type="checkbox" />
              Remember me
            </div>
            <button className="button">ĐĂNG NHẬP</button>
            <div className="login__link">
          <span className="span"> Bạn chưa có tài khoản? </span>
          <a className="space" href="/dangky">
              Đăng ký ngay
          </a>
        </div>
          </form>
        </div>
      </div>
    </div>
  );
}
export default login;
