import React, { useState } from "react";
import "./css/login.css";
import Imgleft from "../../assets/image/img-login.jpg";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
import userApi from "../../api/userApi";
import Swal from "sweetalert2";
import { Redirect, Route } from "react-router";

function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleChangeEmail = (e) => {
    setEmail(e.target.value);
  };

  const handleChangePassword = (e) => {
    setPassword(e.target.value);
  };

  const handleLogin = (e) => {
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
            });
            const { id, accessToken } = response.data;
            localStorage.setItem("id", id);
            localStorage.setItem("accessToken", accessToken);
            return <Redirect to="/" />;
          }
          if (response.status === 400) {
            console.log("Sai username hoặc pass");
          }
        });
    } catch (error) {
      console.log(error);
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
              <a href="/quenmatkhau" className="span">
                Quên mật khẩu?
              </a>
            </div>
            <div className="forget">
              <input type="checkbox" />
              Remember me
            </div>
            <button className="button" onClick={handleLogin}>
              ĐĂNG NHẬP
            </button>
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
export default Login;
