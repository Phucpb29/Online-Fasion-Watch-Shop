import PropTypes from "prop-types";
import React, { useState } from "react";
import "./css/detail.css";

AccountDetail.prototype = {
  user: PropTypes.object,
  handleUpdateUserInfo: PropTypes.func,
};

function AccountDetail(props) {
  const { user, handleUpdateUserInfo } = props;
  const [fullname, setFullName] = useState(user.fullname);
  const [gender, setGender] = useState(user.gender);
  const [birthday, setBirthday] = useState(user.birthday);
  const [email, setEmail] = useState(user.email);
  const [phone, setPhone] = useState(user.phone);
  const [address, setAddress] = useState(user.address);

  const handleChangeName = async (e) => {
    setFullName(e.target.value);
  };
  const handleChangeGender = (e) => {
    setGender(e.target.value);
    console.log(e.target.value);
  };
  const handleChangeBirthday = (e) => {
    setBirthday(e.target.value);
  };
  const handleChangePhone = (e) => {
    setPhone(e.target.value);
  };
  const handleChangeAddress = (e) => {
    setAddress(e.target.value);
  };
  const handleChangeEmail = (e) => {
    setEmail(e.target.value);
  };
  const handleSummitForm = (e) => {
    e.preventDefault();
    console.log(
      "User Child",
      fullname,
      gender,
      birthday,
      email,
      phone,
      address
    );
    if (handleUpdateUserInfo) {
      handleUpdateUserInfo(fullname, gender, phone, birthday, email, address);
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
                onChange={handleChangeName}
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
                checked={gender === true}
                onChange={handleChangeGender}
              />
              <span>Nam</span>
              <input
                type="radio"
                name="gender"
                value="false"
                checked={gender === false}
                onChange={handleChangeGender}
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
                onChange={handleChangeBirthday}
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
                onChange={handleChangePhone}
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
                onChange={handleChangeAddress}
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
                onChange={handleChangeEmail}
                required
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
