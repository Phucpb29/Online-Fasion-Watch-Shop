import "boxicons";
import PropTypes from "prop-types";
import React, { useState } from "react";
import { Link, useHistory, useLocation } from "react-router-dom";
import Swal from "sweetalert2";
import logo from "../../dw-logo.jpg";
import "./css/header.css";

Header.prototype = {
  openCart: PropTypes.func,
  statusToken: PropTypes.bool,
  cartSize: PropTypes.array,
  wishListSize: PropTypes.array,
};

Header.DefaultPropTypes = {
  statusToken: false,
  cartSize: [],
  wishListSize: [],
};

function Header(props) {
  const { pathname } = useLocation();
  const history = useHistory();
  const activeLink = pathname.slice(pathname.lastIndexOf("/") + 1);
  const { openCart, statusToken, cartSize, wishListSize } = props;
  const [isShowUser, setIsShowUser] = useState(false);
  const [keyWord, setKeyWord] = useState("");

  // mở giỏ hàng
  const handleOpenCart = () => {
    if (openCart) {
      openCart();
    }
  };

  // handleChange input
  const handleChangeInput = (e) => {
    setKeyWord(e.target.value);
  };

  // submit input
  const handleSubmitInput = (e) => {
    e.preventDefault();
    if (keyWord.length > 0) {
      history.replace(`/tim-kiem-san-pham/${keyWord}`);
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "Vui lòng nhập vào tên sản phẩm hoặc thương hiệu",
        icon: "warning",
        showConfirmButton: true,
      });
    }
  };

  return (
    <header className="header">
      <div className="header__main">
        <div className="header__main-left">
          <h1 className="header__logo">
            <Link to="/" className="header__logo-link">
              <img src={logo} className="logo" alt="" />
            </Link>
          </h1>
          <ul className="header__category">
            <li className="category__item">
              <Link
                to="/san-pham/gioi-tinh/nam"
                className={
                  activeLink === "nam"
                    ? "item__link item__active"
                    : "item__link"
                }
              >
                ĐỒNG HỒ NAM
              </Link>
            </li>
            <li className="category__item">
              <Link
                to="/san-pham/gioi-tinh/nu"
                className={
                  activeLink === "nu" ? "item__link item__active" : "item__link"
                }
              >
                ĐỒNG HỒ NỮ
              </Link>
            </li>
          </ul>
        </div>
        <div className="header__main-center">
          <form action="" className="form" onSubmit={handleSubmitInput}>
            <div className="form-control">
              <box-icon name="search-alt" className="icon" />
              <input
                type="text"
                name="search"
                value={keyWord}
                onChange={handleChangeInput}
                placeholder="Nhập tên sản phẩm hoặc thương hiệu"
              />
            </div>
          </form>
        </div>
        <div
          className="header__main-right"
          onMouseLeave={() => setIsShowUser(false)}
        >
          <div className="header__icon header__user">
            <Link to="/" className="header__icon-link">
              <box-icon
                name="user"
                className="icon"
                onMouseEnter={() => setIsShowUser(true)}
              ></box-icon>
            </Link>
          </div>
          <div
            className={
              isShowUser
                ? "header__user-dropdown header__user-active"
                : "header__user-dropdown"
            }
          >
            {statusToken ? (
              <div className="dropdown__item">
                <Link
                  to="/thong-tin-tai-khoan/thong-tin-ca-nhan"
                  className="dropdown__item-link"
                >
                  <span>TÀI KHOẢN</span>
                </Link>
              </div>
            ) : (
              <>
                <div className="dropdown__item">
                  <Link to="/dang-nhap" className="dropdown__item-link">
                    <span>ĐĂNG NHẬP</span>
                  </Link>
                </div>
                <div className="dropdown__item">
                  <Link to="/dang-ky" className="dropdown__item-link">
                    <span>ĐĂNG KÝ</span>
                  </Link>
                </div>
              </>
            )}
          </div>
          <div className="header__icon header__cart" onClick={handleOpenCart}>
            <button className="header__icon-btn">
              <box-icon name="cart" className="icon"></box-icon>
            </button>
            <span className="cart__amount">{cartSize}</span>
          </div>
          <div className="header__icon header__wishlist">
            <Link to="/san-pham-yeu-thich" className="header__icon-link">
              <box-icon name="heart" className="icon"></box-icon>
              <span className="wishlist__amount">{wishListSize}</span>
            </Link>
          </div>
        </div>
      </div>
    </header>
  );
}

export default Header;
