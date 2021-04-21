import React from "react";
import PropTypes from "prop-types";
import banner from "../../../../assets/image/banner.jpg";

AccountBanner.propTypes = {
  fullname: PropTypes.string,
};

AccountBanner.DefaultPropTypes = {
  fullname: "",
};

function AccountBanner(props) {
  const { fullname } = props;
  return (
    <div className="account__banner">
      <img src={banner} alt="" />
      <div className="banner__text">
        <p>Xin chào, {fullname}</p>
        <p className="banner__text-sub">Quản lý tài khoản của bạn</p>
      </div>
    </div>
  );
}

export default AccountBanner;
