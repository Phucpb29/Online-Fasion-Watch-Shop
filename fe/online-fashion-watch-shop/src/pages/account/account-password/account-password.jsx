import React from "react";
import PropTypes from "prop-types";
import "./css/password.css";

AccountPassword.propTypes = {};

function AccountPassword(props) {
  return (
    <div className="account__password">
      <div className="account__password__box">
        <form className="form">
          <div className="form__control">
            <div className="form__control-title">
              <span>Mật khẩu cũ :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
            </div>
            <div className="form__control">
            <div className="form__control-title">
              <span>Mật khẩu mới :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
            </div>
            <div className="form__control">
            <div className="form__control-title">
              <span>Xác nhận mật khẩu :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
          </div>
          
          <div className="btn-capnhat">
            <button className="button">CẬP NHẬT</button>
          </div>
        </form>
      </div>
    </div>
  );
}

export default AccountPassword;
