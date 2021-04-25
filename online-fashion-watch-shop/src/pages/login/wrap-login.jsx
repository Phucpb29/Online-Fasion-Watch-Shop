import React from "react";
import PropTypes from "prop-types";
import { Redirect } from "react-router-dom";
import Login from "./login";

WrapLogin.propTypes = {
  handleLogin: PropTypes.func,
};

WrapLogin.DefaultPropTypes = {
  handleLogin: null,
};

function WrapLogin(props) {
  const { handleLogin } = props;
  const accessToken = sessionStorage.getItem("accessToken");

  return (
    <div>
      {accessToken ? (
        <Redirect from="/dang-nhap" to="/" />
      ) : (
        <Login handleLogin={handleLogin} />
      )}
    </div>
  );
}

export default WrapLogin;
