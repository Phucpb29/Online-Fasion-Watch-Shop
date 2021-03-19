import React from "react";
import "./css/detail.css";

function AccountDetail(props) {
  return (
    <div className="account__detail">
      <div className="account__detail__box">
        <form className="form">
          <div className="form__control">
            <div className="form__control-title">
              <span>Họ và tên :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Giới tính :</span>
            </div>
            <div className="form__control-input">
              <input type="radio" value="true" />
              <span>Nam</span>
              <input type="radio" value="false" />
              <span>Nữ</span>
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Ngày sinh :</span>
            </div>
            <div className="form__control-input">
              <input type="date" />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Số điện thoại :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Địa chỉ :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Email :</span>
            </div>
            <div className="form__control-input">
              <input type="text" />
            </div>
          </div>
          <div className="btn__update">
            <button className="button">CẬP NHẬT</button>
          </div>
        </form>
      </div>
    </div>
  );
}

export default AccountDetail;
