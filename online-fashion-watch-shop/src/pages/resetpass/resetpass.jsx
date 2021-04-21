import React, { useState } from "react";
import "./css/resetpass.css";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
import forgotpassApi from "../../api/forgotpassApi";
import { useHistory, useLocation } from "react-router-dom";
import Swal from "sweetalert2";
function Resetpass() {
  const { pathname } = useLocation();
  const token = pathname.slice(pathname.lastIndexOf("/") + 1);
  console.log(token);
  const [newPass, setNewPass] = useState("");
  const [newPassConfirm, setNewPassConfirm] = useState("");

  const handleChangeNewPass = (e) => {
    setNewPass(e.target.value);
  };

  const handleChangeNewPassConfirm = (e) => {
    setNewPassConfirm(e.target.value);
  };

  const handleSubmitRecoverPass = (e) => {
    e.preventDefault();
    try {
      forgotpassApi
        .recoverPass({
          token: token,
          newPassword: newPass,
          confirm: newPassConfirm,
        })
        .then(function (response) {
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "success",
              showConfirmButton: true,
            }).then((result) => {
              if (result.isConfirmed) {
                window.location.replace("/dangnhap");
              }
            });
          } else {
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
        text: "Có lỗi xảy ra. Vui lòng thử lại",
        icon: "error",
        showConfirmButton: true,
      });
    }
  };

  return (
    <div className="resetpass">
      <div class="resetpass__box">
        <a href="/trangchu" className="resetpass__logo">
          <img src={logoDw} alt="" />
        </a>
        <div className="resetpass__form">
          <form className="form">
            <div className="form__control">
              <box-icon type="solid" name="key"></box-icon>
              <input
                type="text"
                name="oldPass"
                onChange={handleChangeNewPass}
                placeholder="Mật khẩu mới"
                required
              />
            </div>

            <div className="form__control">
              <box-icon type="solid" name="key"></box-icon>
              <input
                type="text"
                name="newPass"
                onChange={handleChangeNewPassConfirm}
                placeholder="Xác nhận mật khẩu"
                required
              />
            </div>
            <button className="button" onClick={handleSubmitRecoverPass}>
              ĐỔI MẬT KHẨU
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}
export default Resetpass;
