import "boxicons";
import PropTypes from "prop-types";
import React, { useState } from "react";
import { Link } from "react-router-dom";
import logo from "../../dw-logo.jpg";
import "./css/header.css";

Header.prototype = {
  openCart: PropTypes.func,
  statusToken: PropTypes.bool,
  cartListSize: PropTypes.array,
  wishListSize: PropTypes.array,
};

Header.DefaultPropTypes = {
  statusToken: false,
  cartListSize: [],
  wishListSize: [],
};

function Header(props) {
  const { openCart, statusToken, cartListSize, wishListSize } = props;
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

  // submit
  const handleSubmitInput = (e) => {
    e.preventDefault();
    console.log(keyWord);
    window.location.replace("/sanphamyeuthich");
  };

  return (
    <header className="header">
      <div className="header__main">
        <div className="header__main-left">
          <h1 className="header__logo">
            <a href="/" className="header__logo-link">
              <img src={logo} className="logo" alt="" />
            </a>
          </h1>
          <ul className="header__category">
            <li className="category__item">
              <a href="/sanpham/gioitinh/nam" className="item__link">
                ĐỒNG HỒ NAM
              </a>
            </li>
            <li className="category__item">
              <a href="/sanpham/gioitinh/nu" className="item__link">
                ĐỒNG HỒ NỮ
              </a>
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
                placeholder="Tìm kiếm ..."
                required
              />
            </div>
          </form>
        </div>
        <div
          className="header__main-right"
          onMouseLeave={() => setIsShowUser(false)}
        >
          <div className="header__icon header__user">
            <a href="/" className="header__icon-link">
              <box-icon
                name="user"
                className="icon"
                onMouseEnter={() => setIsShowUser(true)}
              ></box-icon>
            </a>
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
                <a href="/thongtintaikhoan" className="dropdown__item-link">
                  <span>TÀI KHOẢN</span>
                </a>
              </div>
            ) : (
              <>
                <div className="dropdown__item">
                  <a href="/dangnhap" className="dropdown__item-link">
                    <span>ĐĂNG NHẬP</span>
                  </a>
                </div>
                <div className="dropdown__item">
                  <a href="/dangky" className="dropdown__item-link">
                    <span>ĐĂNG KÝ</span>
                  </a>
                </div>
              </>
            )}
          </div>
          <div className="header__icon header__cart" onClick={handleOpenCart}>
            <button className="header__icon-btn">
              <box-icon name="cart" className="icon"></box-icon>
            </button>
            <span className="cart__amount">{cartListSize}</span>
          </div>
          <div className="header__icon header__wishlist">
            <a href="/sanphamyeuthich" className="header__icon-link">
              <box-icon name="heart" className="icon"></box-icon>
              <span className="wishlist__amount">{wishListSize}</span>
            </a>
          </div>
        </div>
      </div>
      {/* <div className="header__sub">
        <nav className="navbar nav__bar-watches">
          <ul className="navbar__item">
            <li className="item">
              <a href="/" className="item__link">
                ĐỒNG HỒ NAM
              </a>
            </li>
            <li className="item">
              <a href="/" className="item__link">
                ĐỒNG HỒ NỮ
              </a>
            </li>
          </ul>
        </nav>
      </div> */}
    </header>
  );
}

export default Header;
