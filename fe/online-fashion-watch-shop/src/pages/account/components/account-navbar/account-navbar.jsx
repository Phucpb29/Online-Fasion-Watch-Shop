import React from "react";
import {
  BrowserRouter as Router,
  Route,
  Switch,
  NavLink,
  useRouteMatch,
} from "react-router-dom";
import PropTypes from "prop-types";
import Swal from "sweetalert2";

Navbar.propTypes = {
  statusToken: PropTypes.func,
  path: PropTypes.string,
};

Navbar.DefaultPropTypes = {
  statusToken: false,
  path: "",
};

// đăng xuất tài khoản
const handleClickLogout = () => {
  Swal.fire({
    title: "THÔNG BÁO",
    text: "BẠN CÓ MUỐN ĐĂNG XUẤT TÀI KHOẢN",
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "#3085d6",
    cancelButtonColor: "#d33",
    confirmButtonText: "ĐĂNG XUẤT",
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "Đăng xuất thành công. Hẹn gặp lại bạn sau!!!",
        icon: "success",
        showConfirmButton: true,
      }).then((result) => {
        if (result.isConfirmed) {
          localStorage.removeItem("cart");
          sessionStorage.removeItem("accessToken");
          window.location.replace("/");
        }
      });
    }
  });
};

function Navbar(props) {
  const { statusToken, path } = props;
  return (
    <div className="account__navlink">
      <ul className="navlink__list">
        <NavLink
          exact
          to={`${path}/thong-tin-ca-nhan`}
          className="link__item"
          activeClassName="link__active"
        >
          <div className="link">
            <span>Thông tin cá nhân</span>
          </div>
        </NavLink>
        <NavLink
          exact
          to={`${path}/lich-su-mua-hang`}
          className="link__item"
          activeClassName="link__active"
        >
          <div className="link">
            <span>Lịch sử mua hàng</span>
          </div>
        </NavLink>
        <NavLink
          exact
          to={`${path}/doi-mat-khau`}
          className="link__item"
          activeClassName="link__active"
        >
          <div className="link">
            <span>Đổi mật khẩu</span>
          </div>
        </NavLink>
      </ul>
      <div className="navlink__logout">
        {statusToken && (
          <button className="btn__logout" onClick={handleClickLogout}>
            <span>Đăng xuất</span>
            <box-icon name="log-in-circle"></box-icon>
          </button>
        )}
      </div>
    </div>
  );
}

export default Navbar;
