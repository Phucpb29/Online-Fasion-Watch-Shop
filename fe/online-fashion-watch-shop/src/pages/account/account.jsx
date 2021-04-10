import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Route,
  Switch,
  Link,
  useRouteMatch,
} from "react-router-dom";
import Swal from "sweetalert2";
import dashboardApi from "../../api/dashboardApi";
import banner from "../../assets/image/banner.jpg";
import Error from "../../components/error/error";
import LoadingOverplay from "../../components/loading/loading";
import AccountDetail from "./components/account-detail/account-detail";
import AccountError from "./components/account-error/account-error";
import AccountOrder from "./components/account-order/account-order";
import AccountPassword from "./components/account-password/account-password";
import "./css/account.css";

Account.propTypes = {
  openDialog: PropTypes.func,
  handleLogout: PropTypes.func,
  statusToken: PropTypes.bool,
};

Account.DefaultPropTypes = {
  openDialog: null,
  handleLogout: null,
  statusToken: false,
};

function Account(props) {
  const { statusToken, openDialog, handleLogout } = props;
  const { path } = useRouteMatch();
  const [user, setUser] = useState({});
  const [loading, setLoading] = useState(false);

  // lấy thông tin user khi đăng nhập
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await dashboardApi.getInfo();
        setUser(response.data);
        setLoading(false);
      }
    };
    fetchData();
  }, [statusToken]);

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
            sessionStorage.removeItem("accessToken");
            window.location.replace("/");
          }
        });
      }
    });
  };

  // cập nhật thông tin
  const handleUpdateUserInfo = (
    fullname,
    gender,
    birthday,
    phone,
    email,
    address
  ) => {
    user.fullname = fullname;
    user.gender = gender;
    user.birthday = birthday;
    user.phone = phone;
    user.email = email;
    user.address = address;
    // let newDate = new Date();
    // let date = newDate.getDate();
    // let month = newDate.getMonth() + 1;
    // let year = newDate.getFullYear();
    // console.log(year);
    // console.log(`${month < 10 ? `0${month}` : `${month}`}`);
    // console.log(`${date < 10 ? `0${date}` : `${date}`}`);
    dashboardApi
      .updateInfo({
        isdelete: user.isdelete,
        id: user.id,
        address: address,
        birthday: birthday,
        fullname: fullname,
        email: email,
        password: user.password,
        phone: phone,
        update_date: user.update_date,
        created_date: user.created_date,
        username: email,
        gender: gender,
      })
      .then(function (response) {
        if (response.status === 200) {
          Swal.fire({
            title: "THÔNG BÁO",
            text: response.data,
            icon: "success",
            showConfirmButton: true,
          }).then((result) => {
            if (result.isConfirm === true) {
              window.localtion.replace("/thongtintaikhoan");
            }
          });
        } else {
          Swal.fire({
            title: "THÔNG BÁO",
            text: response.data,
            icon: "error",
            showConfirmButton: true,
          });
        }
      });
  };

  // mở dialog đánh giá sản phẩm
  function handleOpenDialog() {
    if (openDialog) {
      openDialog();
    }
  }

  return (
    <div>
      <Router>
        <div className="account">
          <div className="account__banner">
            <img src={banner} alt="" />
            <div className="banner__text">
              <p>Xin chào, {user.fullname}</p>
              <p className="banner__text-sub">Quản lý tài khoản của bạn</p>
            </div>
          </div>
          <div className="account__navlink">
            <ul className="navlink__list">
              <li className="link__item">
                <Link to={path} className="link">
                  <span>Thông tin cá nhân</span>
                </Link>
              </li>
              <li className="link__item">
                <Link to={`${path}/lichsumuahang`} className="link">
                  <span>Lịch sử mua hàng</span>
                </Link>
              </li>
              <li className="link__item">
                <Link to={`${path}/doimatkhau`} className="link">
                  <span>Đổi mật khẩu</span>
                </Link>
              </li>
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
          <div className="account__box">
            {statusToken ? (
              <>
                {loading ? (
                  <LoadingOverplay />
                ) : (
                  <Switch>
                    <Route exact path={path}>
                      <AccountDetail
                        user={user}
                        handleUpdateUserInfo={handleUpdateUserInfo}
                      />
                    </Route>
                    <Route exact path={`${path}/lichsumuahang`}>
                      <AccountOrder handleOpenDialog={handleOpenDialog} />
                    </Route>
                    <Route exact path={`${path}/doimatkhau`}>
                      <AccountPassword />
                    </Route>
                    <Route>
                      <Error />
                    </Route>
                  </Switch>
                )}
              </>
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
