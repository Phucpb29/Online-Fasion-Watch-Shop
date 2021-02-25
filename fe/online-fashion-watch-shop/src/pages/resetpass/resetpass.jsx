import React from "react";
import "./css/resetpass.css";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
function Resetpass() {
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
              <input type="text" placeholder="Mật khẩu mới" />
            </div>

            <div className="form__control">
              <box-icon type="solid" name="key"></box-icon>
              <input type="text" placeholder="Xác nhận mật khẩu" />
            </div>
            <button className="button">ĐỔI MẬT KHẨU</button>
          </form>
        </div>
      </div>
    </div>
  );
}
export default Resetpass;
