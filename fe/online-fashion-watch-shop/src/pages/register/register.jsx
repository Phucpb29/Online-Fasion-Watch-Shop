import React from "react";
import "./css/register.css";
import imgRight from "../../assets/image/img-register.jpg";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";

function Register() {
  return (
    <div className="register">
      <div className="register__left">
        <a href="/" className="register__logo">
          <img src={logoDw} alt="" />
        </a>
        <div className="register__form">
          <form className="form__register">
            <div className="form__register-control">
              <box-icon type="solid" name="user"></box-icon>
              <input type="text" placeholder="Name" />
            </div>
            <div className="form__register-control">
              <box-icon name="mail-send"></box-icon>
              <input type="text" placeholder="Email" />
            </div>
            <div className="form__register-control">
            <box-icon name='lock-alt' type='solid' ></box-icon>
              <input type="Password" placeholder="Password" />
            </div>
            <button className="button">
              ĐĂNG KÝ
            </button>
          </form>
        </div>
        <div className="register__link">
          <span className="span"> Bạn đã có tài khoản?</span>
          <a  className="space"href="/dangnhap">Quay lại</a>
        </div>
      </div>
      <div className="register__right">
        <div className="register__img">
          <img src={imgRight} alt="" />
        </div>
      </div>
    </div>
  );
}

export default Register;
