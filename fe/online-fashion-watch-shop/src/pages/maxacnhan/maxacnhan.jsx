import React from "react";
import "./css/maxacnhan.css";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
function Maxacnhan() {
  return (
    <div className="maxacnhan">
      <div className="maxacnhan__box">
        <a href="/trangchu" className="maxacnhan__logo">
          <img src={logoDw} alt="" />
        </a>
        <div className="maxacnhan__text">
            <span>Nhập mã xác nhận từ Email để thay đổi mật khẩu mới</span>
        </div>
        <div className="maxacnhan__form">
            <form className="form">
            <div className="form__control">
            <box-icon type='solid' name='key'></box-icon>
              <input type="text" placeholder="Mã xác nhận" />
            </div>
            <button className="button">XÁC NHẬN</button>
            </form>
        </div>
      </div>
    </div>
  );
}
export default Maxacnhan;
