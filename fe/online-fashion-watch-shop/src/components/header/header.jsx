import React from "react";
import logo from "../../dw-logo.jpg";
import "./css/header.css";
import "boxicons";

function Header() {
  return (
    <React.Fragment>
      <div className="header__main">
        <div className="header__main-left">
          <h1 className="header__logo">
            <a href="/" className="header__logo-link">
              <img src={logo} className="logo" alt="" />
            </a>
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
        <div className="header__main-right">
          <div className="header__icon header__user">
            <a href="/" className="header__icon-link">
              <box-icon name="user" className="icon"></box-icon>
            </a>
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
    </React.Fragment>
  );
}

export default Header;
