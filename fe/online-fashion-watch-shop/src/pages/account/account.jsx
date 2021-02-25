import React from "react";
import {
  BrowserRouter as Router,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";
import banner from "../../assets/image/banner.jpg";
import AccountDetail from "./account-detail/account-detail";
import AccountOrder from "./account-order/account-order";
import AccountPassword from "./account-password/account-password";
import "./css/account.css";

Account.propTypes = {};

function Account(props) {
  const { path } = useRouteMatch();
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
              <a href="/" className="btn__logout">
                <span>Đăng xuất</span>
                <box-icon name="log-in-circle"></box-icon>
              </a>
            </div>
          </div>
          <div className="account__box">
            <Switch>
              <Route exact path={path}>
                <AccountDetail />
              </Route>
              <Route path={`${path}/lichsumuahang`}>
                <AccountOrder />
              </Route>
              <Route path={`${path}/doimatkhau`}>
                <AccountPassword />
              </Route>
            </Switch>
          </div>
        </div>
      </Router>
    </div>
  );
}

export default Account;
