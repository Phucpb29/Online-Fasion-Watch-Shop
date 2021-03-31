import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Route,
  Switch,
  useHistory,
  useRouteMatch,
} from "react-router-dom";
import Swal from "sweetalert2";
import banner from "../../assets/image/banner.jpg";
import Error from "../../components/error/error";
import AccountDetail from "./account-detail/account-detail";
import AccountError from "./account-error/account-error";
import AccountOrder from "./account-order/account-order";
import AccountPassword from "./account-password/account-password";
import "./css/account.css";

Account.propTypes = {
  openDialog: PropTypes.func,
  handleLogout: PropTypes.func,
  statusToken: PropTypes.bool,
};

function Account(props) {
  // const [name, setName] = useState("");
  // const
  let history = useHistory();
  const { statusToken, openDialog, handleLogout } = props;
  const { path } = useRouteMatch();
  const [valueToken, setValueToken] = useState(statusToken);

  // kiểm tra user đăng nhập khi gõ url
  useEffect(() => {
    setValueToken(statusToken);
  }, [statusToken]);

  // đăng xuất tài khoản
  const handleClickLogout = () => {
    if (handleLogout) {
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
              sessionStorage.removeItem("accessToken");
              history.push("/");
              handleLogout();
            }
          });
        }
      });
    }
  };

  return (
    <div>
      <Router>
        <div className="account">
          <div className="account__banner">
            <img src={banner} alt="" />
            <div className="banner__text">
              <p>Xin chào, Thầy</p>
              <p className="text2">Quản lý tài khoản của bạn</p>
            </div>
          </div>
          <div className="account__navlink">
            <ul className="navlink__list">
              <li className="link__item">
                <a href={path} className="link">
                  <span>Thông tin cá nhân</span>
                </a>
              </li>
              <li className="link__item">
                <a href={`${path}/lichsumuahang`} className="link">
                  <span>Lịch sử mua hàng</span>
                </a>
              </li>
              <li className="link__item">
                <a href={`${path}/doimatkhau`} className="link">
                  <span>Đổi mật khẩu</span>
                </a>
              </li>
            </ul>
            <div className="navlink__logout">
              {valueToken && (
                <button className="btn__logout" onClick={handleClickLogout}>
                  <span>Đăng xuất</span>
                  <box-icon name="log-in-circle"></box-icon>
                </button>
              )}
            </div>
          </div>
          <div className="account__box">
            {valueToken ? (
              <Switch>
                <Route exact path={path}>
                  <AccountDetail />
                </Route>
                <Route path={`${path}/lichsumuahang`}>
                  <AccountOrder openDialog={openDialog} />
                </Route>
                <Route path={`${path}/doimatkhau`}>
                  <AccountPassword />
                </Route>
                <Route>
                  <Error />
                </Route>
              </Switch>
            ) : (
              <AccountError />
            )}
          </div>
        </div>
      </Router>
    </div>
  );
}

export default Account;
