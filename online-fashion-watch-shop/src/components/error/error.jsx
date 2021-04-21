import React from "react";
import { Link } from "react-router-dom";
import "./css/error.css";
import PropTypes from "prop-types";

Error.prototype = {
  text: PropTypes.string,
};

Error.DefaultPropTypes = {
  text: "",
};

function Error(props) {
  const { text } = props;
  return (
    <div className="main__error">
      <div className="main__error-box main__error-title">
        <h3>Oops! :(</h3>
      </div>
      <div className="main__error-box main__error-content">
        <p>{text}</p>
        <p>Nhấp nút quay lại để trở về trang chủ</p>
      </div>
      <div className="main__error-box main__error-back">
        <Link to="/" className="back__link">
          <span>QUAY LẠI</span>
        </Link>
      </div>
    </div>
  );
}

export default Error;
