import React, { useState } from "react";
import "./css/password.css";
import Swal from "sweetalert2";
import dashboardApi from "../../../../api/dashboardApi";

function AccountPassword(props) {
  const [oldPassword, setOldPassword] = useState("");
  const [newPassword, setNewPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const handleOldPassword = (e) => {
    setOldPassword(e.target.value);
  };
  const handlNewPassword = (e) => {
    setNewPassword(e.target.value);
  };
  const handleConfirmPassword = (e) => {
    setConfirmPassword(e.target.value);
  };
  const handleSubmitPassword = (e) => {
    e.preventDefault();
    if (validationLength === true) {
      if (validationPass === true) {
        try {
          dashboardApi
            .updatePassword({
              oldPassword: oldPassword,
              newPassword: newPassword,
              confirm: confirmPassword,
            })
            .then(function (response) {
              if (response.status === 200) {
                Swal.fire({
                  title: "THÔNG BÁO",
                  text: response.data,
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
          text: "Mật khẩu xác nhận phải giống mật khẩu mới",
          icon: "error",
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

  function validationLength() {
    if (
      oldPassword.trim().length > 0 &&
      newPassword.trim().length > 0 &&
      confirmPassword.trim().length > 0
    ) {
      return true;
    } else {
      return false;
    }
  }

  function validationPass() {
    if (confirmPassword.trim() === newPassword.trim()) {
      return true;
    } else {
      return false;
    }
  }

  return (
    <div className="account__password">
      <div className="account__password__box">
        <form className="form">
          <div className="form__control">
            <div className="form__control-title">
              <span>Mật khẩu cũ :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="oldPassword"
                value={oldPassword}
                onChange={handleOldPassword}
              />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Mật khẩu mới :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="newPassword"
                value={newPassword}
                onChange={handlNewPassword}
              />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Xác nhận mật khẩu :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="confirmPassword"
                value={confirmPassword}
                onChange={handleConfirmPassword}
              />
            </div>
          </div>

          <div className="btn-capnhat">
            <button className="button" onClick={handleSubmitPassword}>
              CẬP NHẬT
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

export default AccountPassword;
