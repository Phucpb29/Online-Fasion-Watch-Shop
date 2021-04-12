import React, { useState } from "react";
import "./css/forgotpass.css";
import logoDw from "../../assets/image/dw-logo.jpg";
import "boxicons";
import forgotpassApi from "../../api/forgotpassApi";
import Swal from "sweetalert2";
import LoadingOverplay from "../../components/loading/loading";
function Forgotpass() {
  const [email, setEmail] = useState("");
  const [loading, setLoading] = useState(false);

  const handleChangeEmail = (e) => {
    setEmail(e.target.value);
  };

  const handleSubmitEmail = (e) => {
    setLoading(true);
    e.preventDefault();
    try {
      forgotpassApi.getLinkRecover(email).then(function (response) {
        if (response === false) {
          setLoading(false);
          Swal.fire({
            title: "THÔNG BÁO",
            text: "Email không đúng. Vui lòng nhập lại",
            icon: "error",
            showConfirmButton: true,
          });
        } else {
          if (response.data === true) {
            setLoading(false);
            Swal.fire({
              title: "THÔNG BÁO",
              text: "Mã kích hoạt được gửi về email. Vui lòng kiểm tra",
              icon: "success",
              showConfirmButton: true,
            });
          }
        }
      });
    } catch (error) {}
  };

  return (
    <div className="forgotpass">
      {loading && <LoadingOverplay />}
      <div className="forgotpass__box">
        <a href="/trangchu" className="forgotpass__logo">
          <img src={logoDw} alt="" />
        </a>
        <div className="forgotpass__text">
          <span>
            Nhập email tài khoản của bạn để nhận mã xác nhận thay đổi mật khẩu
            mới
          </span>
        </div>
        <div className="link">
          <span>Bạn đã nhớ mật khẩu? </span>
          <a href="/dangnhap">Quay lại đăng nhập</a>
        </div>
        <div className="forgotpass__form">
          <form className="form">
            <div className="form__control">
              <box-icon name="mail-send"></box-icon>
              <input
                type="text"
                name="email"
                value={email}
                onChange={handleChangeEmail}
                placeholder="Email"
                required
              />
            </div>
            <button className="button" onClick={handleSubmitEmail}>
              GỬI MÃ
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}
export default Forgotpass;
