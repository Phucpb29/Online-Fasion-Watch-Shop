import PropTypes from "prop-types";
import React from "react";
import "./css/detail.css";

AccountDetail.prototype = {
  fullname: PropTypes.string,
  gender: PropTypes.bool,
  birthday: PropTypes.string,
  email: PropTypes.string,
  phone: PropTypes.string,
  address: PropTypes.string,
  handleChangeName: PropTypes.func,
  handleChangePhone: PropTypes.func,
  handleChangeEmail: PropTypes.func,
  handleChangeGender: PropTypes.func,
  handleChangeAddress: PropTypes.func,
  handleChangeBirthday: PropTypes.func,
  handleUpdateUserInfo: PropTypes.func,
};

AccountDetail.DefaultPropTypes = {
  fullname: "",
  gender: false,
  birthday: "",
  email: "",
  phone: "",
  address: "",
  handleChangeName: null,
  handleChangePhone: null,
  handleChangeEmail: null,
  handleChangeGender: null,
  handleChangeAddress: null,
  handleChangeBirthday: null,
  handleUpdateUserInfo: null,
};

function AccountDetail(props) {
  const { fullname, gender, birthday, email, phone, address } = props;
  const {
    handleChangeName,
    handleChangePhone,
    handleChangeEmail,
    handleChangeGender,
    handleChangeAddress,
    handleChangeBirthday,
    handleUpdateUserInfo,
  } = props;
  const changeName = (e) => {
    handleChangeName(e.target.value);
  };
  const changeGender = (e) => {
    handleChangeGender(e.target.value);
  };
  const changeBirthday = (e) => {
    handleChangeBirthday(e.target.value);
  };
  const changePhone = (e) => {
    handleChangePhone(e.target.value);
  };
  const changeAddress = (e) => {
    handleChangeAddress(e.target.value);
  };
  const changeEmail = (e) => {
    handleChangeEmail(e.target.value);
  };

  const handleSummitForm = (e) => {
    e.preventDefault();
    if (handleUpdateUserInfo) {
      handleUpdateUserInfo();
    }
  };

  return (
    <div className="account__detail">
      <div className="account__detail__box">
        <form className="form">
          <div className="form__control">
            <div className="form__control-title">
              <span>Họ và tên :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="fullname"
                value={fullname}
                onChange={changeName}
                required
              />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Giới tính :</span>
            </div>
            <div className="form__control-input">
              <input
                type="radio"
                name="gender"
                value="true"
                checked={gender === "true" || gender === true}
                onChange={changeGender}
              />
              <span>Nam</span>
              <input
                type="radio"
                name="gender"
                value="false"
                checked={gender === "false" || gender === false}
                onChange={changeGender}
              />
              <span>Nữ</span>
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Ngày sinh :</span>
            </div>
            <div className="form__control-input">
              <input
                type="date"
                name="birthday"
                value={birthday}
                onChange={changeBirthday}
                required
              />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Số điện thoại :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="phone"
                value={phone}
                onChange={changePhone}
                required
              />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Địa chỉ :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="address"
                value={address}
                onChange={changeAddress}
                required
              />
            </div>
          </div>
          <div className="form__control">
            <div className="form__control-title">
              <span>Email :</span>
            </div>
            <div className="form__control-input">
              <input
                type="text"
                name="email"
                value={email}
                onChange={changeEmail}
                required
                disabled
              />
            </div>
          </div>
          <div className="btn__update">
            <button className="button" onClick={handleSummitForm}>
              CẬP NHẬT
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

export default AccountDetail;
