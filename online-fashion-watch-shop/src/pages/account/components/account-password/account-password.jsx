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
    try {
      dashboardApi
        .updatePassword({
          oldPassword: oldPassword,
          newPassword: newPassword,
          confirm: confirmPassword,
        })
        .then(function (response) {
          console.log(response.data);
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
      console.log(error);
    }
  };
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
