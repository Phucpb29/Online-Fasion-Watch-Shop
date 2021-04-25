import React, { useState } from "react";
import "./css/register.css";
import imgRight from "../../assets/image/img-register.jpg";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
import userApi from "../../api/userApi";
import Swal from "sweetalert2";
import RegisterLoad from "./components/register-load";

function Register() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [registerLoading, setRegisterLoading] = useState(false);

  const handleChangeName = (e) => {
    setName(e.target.value);
  };

  const handleChangePassword = (e) => {
    setPassword(e.target.value.trim());
  };
  const handleChangeEmail = (e) => {
    setEmail(e.target.value.trim());
  };

  function validateLength(name, email, password) {
    if (name.length > 0 && email.length > 0 && password.lenght > 0) {
      return true;
    } else {
      return false;
    }
  }

  function validateEmail(email) {
    const emailRegex = "^[\\w\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
    if (email.match(emailRegex)) {
      return true;
    } else {
      return false;
    }
  }

  const handleRegister = (e) => {
    e.preventDefault();
    if (validateLength(name, email, password)) {
      if (validateEmail(email)) {
        try {
          setRegisterLoading(true);
          userApi
            .register({
              name: name,
              email: email,
              password: password,
            })
            .then(function (response) {
              if (response.status === 202) {
                setRegisterLoading(false);
                Swal.fire({
                  title: "THÔNG BÁO",
                  text:
                    "ĐĂNG KÝ THÀNH CÔNG! VUI LÒNG KIỂM TRA EMAIL ĐỂ KÍCH HOẠT TÀI KHOẢN",
                  icon: "success",
                  showConfirmButton: true,
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
            text: "Có lỗi xảy ra! Vui lòng thử lại.",
            icon: "error",
            showConfirmButton: true,
          });
        }
      } else {
        Swal.fire({
          title: "THÔNG BÁO",
          text: "Email không đúng định dạng",
          icon: "warning",
          showConfirmButton: true,
        });
      }
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "Vui lòng nhập đầy đủ thông tin",
        icon: "warning",
        showConfirmButton: true,
      });
    }
  };

  return (
    <>
      {registerLoading && <RegisterLoad registerLoading={registerLoading} />}
      <div className="register">
        <div className="register__left">
          <a href="/" className="register__logo">
            <img src={logoDw} alt="" />
          </a>
          <div className="register__form">
            <form className="form__register">
              <div className="form__register-control">
                <box-icon type="solid" name="user"></box-icon>
                <input
                  type="text"
                  placeholder="Name"
                  name="name"
                  value={name}
                  onChange={handleChangeName}
                  required
                />
              </div>
              <div className="form__register-control">
                <box-icon name="mail-send"></box-icon>
                <input
                  type="text"
                  placeholder="Email"
                  name="email"
                  value={email}
                  onChange={handleChangeEmail}
                  required
                />
              </div>
              <div className="form__register-control">
                <box-icon name="lock-alt" type="solid"></box-icon>
                <input
                  type="Password"
                  placeholder="Password"
                  name="password"
                  value={password}
                  onChange={handleChangePassword}
                  required
                />
              </div>
              <button className="button" onClick={handleRegister}>
                ĐĂNG KÝ
              </button>
            </form>
          </div>
          <div className="register__link">
            <span className="span"> Bạn đã có tài khoản?</span>
            <a className="space" href="/dangnhap">
              Quay lại
            </a>
          </div>
        </div>
        <div className="register__right">
          <div className="register__img">
            <img src={imgRight} alt="" />
          </div>
        </div>
      </div>
    </>
  );
}

export default Register;
