import "boxicons";
import React, { useState } from "react";
import { Link } from "react-router-dom";
import logo from "../../dw-logo.jpg";
import "./css/header.css";

function Header() {
  const [isShowUser, setIsShowUser] = useState(false);

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
              <span>ĐỒNG HỒ</span>
            </li>
            <li className="category__item">
              <span>THƯƠNG HIỆU</span>
            </li>
          </ul>
        </div>
        <div className="header__main-center">
          <form action="" className="form">
            <div className="form-control">
              <box-icon name="search-alt" className="icon" />
              <input type="text" placeholder="Tìm kiếm ..." required />
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
            <div className="dropdown__item">
              <Link to="/dangnhap" className="dropdown__item-link">
                <span>ĐĂNG NHẬP</span>
              </Link>
            </div>
            <div className="dropdown__item">
              <Link to="/dangky" className="dropdown__item-link">
                <span>ĐĂNG KÝ</span>
              </Link>
            </div>
          </div>
          <div className="header__icon header__cart">
            <button className="header__icon-btn">
              <box-icon name="cart" className="icon"></box-icon>
            </button>
            <span className="cart__amount">99</span>
          </div>
          <div className="header__icon header__wishlist">
            <div className="header__icon-link">
              <box-icon name="heart" className="icon"></box-icon>
            </div>
          </div>
        </div>
      </div>
      <div className="header__sub">
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
      </div>
    </header>
  );
}

export default Header;
