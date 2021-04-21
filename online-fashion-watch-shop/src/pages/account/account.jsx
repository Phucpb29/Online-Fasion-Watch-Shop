import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";
import Swal from "sweetalert2";
import dashboardApi from "../../api/dashboardApi";
import Error from "../../components/error/error";
import LoadingOverplay from "../../components/loading/loading";
import AccountBanner from "./components/account-banner/account-banner";
import AccountDetail from "./components/account-detail/account-detail";
import AccountError from "./components/account-error/account-error";
import Navbar from "./components/account-navbar/account-navbar";
import AccountOrder from "./components/account-order/account-order";
import AccountPassword from "./components/account-password/account-password";
import DialogComment from "./components/dialog-comment/dialog";
import "./css/account.css";

Account.propTypes = {
  statusToken: PropTypes.bool,
};

Account.DefaultPropTypes = {
  statusToken: false,
};

function Account(props) {
  const { statusToken } = props;
  const { path } = useRouteMatch();

  // user
  const [user, setUser] = useState({});
  const [fullname, setFullName] = useState("");
  const [gender, setGender] = useState("");
  const [birthday, setBirthday] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [address, setAddress] = useState("");

  // comment
  const [orderList, setOrderList] = useState([]);
  const [orderInfo, setOrderInfo] = useState({});
  const [statusDialog, setStatusDialog] = useState(false);

  // loading
  const [loading, setLoading] = useState(true);

  /* tương tác đóng mở đánh giá sản phẩm */
  // mở dialog
  const openDialog = () => {
    setStatusDialog(true);
    document.body.style.overflow = "hidden";
  };
  // đóng dialog
  const closeDialog = () => {
    setStatusDialog(false);
    document.body.style.overflow = "unset";
  };
  // đánh giá sản phẩm
  function handleOpenDialog(product) {
    setOrderInfo(product);
  }
  /* tương tác đóng mở đánh giá sản phẩm */

  // lấy thông tin user và lịch sử order khi đăng nhập
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const responseUser = await dashboardApi.getInfo();
        const responseOrder = await dashboardApi.viewOrderHistory();
        setUser(responseUser.data);
        setOrderList(responseOrder.data);
        setLoading(false);
      }
    };
    fetchData();
  }, [statusToken]);

  // truyền thông tin user vào từng biến
  useEffect(() => {
    setFullName(user.fullname);
    setGender(user.gender);
    setBirthday(user.birthday);
    setEmail(user.email);
    setPhone(user.phone);
    setAddress(user.address);
  }, [user]);

  //  lấy ngày hiện tài
  function getDate() {
    let newDate = new Date();
    let date = newDate.getDate();
    let month = newDate.getMonth() + 1;
    let year = newDate.getFullYear();
    let nowDate = `${year}-${month < 10 ? `0${month}` : `${month}`}-${
      date < 10 ? `0${date}` : `${date}`
    }`;
    return nowDate;
  }

  // cập nhật thông tin
  function handleUpdateUserInfo() {
    const updateDate = getDate();
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
        update_date: updateDate,
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
              window.localtion.replace(
                "/thong-tin-tai-khoan/thong-tin-ca-nhan"
              );
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
  }

  function handleChangeName(value) {
    setFullName(value);
  }
  function handleChangeGender(value) {
    setGender(value);
  }
  function handleChangeBirthday(value) {
    setBirthday(value);
  }
  function handleChangePhone(value) {
    setPhone(value);
  }
  function handleChangeAddress(value) {
    setAddress(value);
  }
  function handleChangeEmail(value) {
    setEmail(value);
  }

  return (
    <div>
      <Router>
        <div className="account">
          <AccountBanner />
          <Navbar statusToken={statusToken} path={path} />
          <div className="account__box">
            {statusToken ? (
              <>
                {loading ? (
                  <LoadingOverplay />
                ) : (
                  <>
                    <DialogComment
                      orderInfo={orderInfo}
                      statusDialog={statusDialog}
                      closeDialog={closeDialog}
                    />
                    <Switch>
                      <Route exact path={`${path}/thong-tin-ca-nhan`}>
                        <AccountDetail
                          fullname={fullname}
                          gender={gender}
                          birthday={birthday}
                          email={email}
                          phone={phone}
                          address={address}
                          handleChangeName={handleChangeName}
                          handleChangePhone={handleChangePhone}
                          handleChangeEmail={handleChangeEmail}
                          handleChangeGender={handleChangeGender}
                          handleChangeAddress={handleChangeAddress}
                          handleChangeBirthday={handleChangeBirthday}
                          handleUpdateUserInfo={handleUpdateUserInfo}
                        />
                      </Route>
                      <Route exact path={`${path}/lich-su-mua-hang`}>
                        <AccountOrder
                          orderList={orderList}
                          openDialog={openDialog}
                          handleOpenDialog={handleOpenDialog}
                        />
                      </Route>
                      <Route exact path={`${path}/doi-mat-khau`}>
                        <AccountPassword />
                      </Route>
                      <Route>
                        <Error />
                      </Route>
                    </Switch>
                  </>
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
