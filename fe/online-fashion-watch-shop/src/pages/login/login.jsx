import React from "react";
import "./css/login.css";
import Imgleft from "../../assets/image/img-login.jpg";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
function Login() {
  return (
    <div className="Login">
      <div className="Login__left">
        <div className="Login__img">
            <img src={Imgleft} alt="Imgleft"/>
        </div>
      </div>
      <div className="Login__left">
        <a href="/" className="Login__logo">
        <img src={logoDw} alt="" />
        </a>
        <div className="Login__form">
          <form className="form__login">
            <div className="form__control">
            <box-icon name="mail-send"></box-icon>
              <input type="text" placeholder="Email" />
            </div>
            <div className="form__control">
            <box-icon name='lock-alt' type='solid' ></box-icon>
              <input type="Password" placeholder="Password" />
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
export default Login;
