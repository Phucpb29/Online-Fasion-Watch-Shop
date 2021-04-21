import "boxicons";
import PropTypes from "prop-types";
import React, { useState } from "react";
import Swal from "sweetalert2";
import userApi from "../../api/userApi";
import logoDw from "../../assets/image/dw-logo.jpg";
import Imgleft from "../../assets/image/img-login.jpg";
import "./css/login.css";

Login.prototype = {
  handleLogin: PropTypes.func,
};

Login.DefaultPropTypes = {
  handleLogin: null,
};

function Login(props) {
  const { handleLogin } = props;
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleChangeEmail = (e) => {
    setEmail(e.target.value);
  };

  const handleChangePassword = (e) => {
    setPassword(e.target.value);
  };

  // đăng nhập tài khoản
  const handleClickLogin = (e) => {
    e.preventDefault();
    try {
      userApi
        .login({
          username: email,
          password: password,
        })
        .then(function (response) {
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: "ĐĂNG NHẬP THÀNH CÔNG",
              icon: "success",
              showConfirmButton: true,
            }).then((result) => {
              const { accessToken } = response.data;
              sessionStorage.setItem("accessToken", accessToken);
              handleLogin();
              if (result.isConfirmed === true) {
                window.location.replace("/");
              }
            });
          }
          if (response.status === 400) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "error",
              showConfirmButton: true,
            });
          }
        });
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "CÓ LỖI XẢY RA! VUI LÒNG THỬ LẠI.",
        icon: "error",
        showConfirmButton: true,
      });
    }
  };

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
              <input
                type="text"
                placeholder="Email"
                name="email"
                value={email}
                onChange={handleChangeEmail}
              />
            </div>
            <div className="link">
              <div className="form__control">
                <box-icon name="lock-alt" type="solid"></box-icon>
                <input
                  type="Password"
                  placeholder="Password"
                  name="password"
                  value={password}
                  onChange={handleChangePassword}
                />
              </div>
              <a href="/quen-mat-khau" className="span">
                Quên mật khẩu?
              </a>
            </div>
            <button className="button" onClick={handleClickLogin}>
              ĐĂNG NHẬP
            </button>
            <div className="login__link">
              <span className="span"> Bạn chưa có tài khoản? </span>
              <a className="space" href="/dang-ky">
                Đăng ký ngay
              </a>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
export default Login;
