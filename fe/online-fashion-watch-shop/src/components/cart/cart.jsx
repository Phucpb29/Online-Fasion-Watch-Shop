import React from "react";
import PropTypes from "prop-types";
import "./css/cart.css";
import "boxicons";
import movado from "../../assets/image/movado.jpg";
import { Link } from "react-router-dom";

CartModal.propTypes = {
  isOpenCart: PropTypes.bool,
  openCart: PropTypes.func,
};

function CartModal(props) {
  const { isOpenCart, openCart } = props;

  const handleOpenCart = () => {
    if (openCart) {
      openCart();
    }
  };

  return (
    <div className={isOpenCart ? "cart cart__active" : "cart"}>
      <div className="cart__detail">
        <div className="cart__header">
          <div className="cart__title">
            <p>Gio hàng của bạn</p>
          </div>
          <div className="cart__button">
            <button className="button__close" onClick={handleOpenCart}>
              X
            </button>
          </div>
        </div>
        <div className="cart__body">
          <ul className="cart__list">
            <li className="cart__list-item">
              <div className="item__img">
                <img src={movado} alt="" />
              </div>
              <div className="item__detail">
                <div className="detail__left">
                  <span className="product__name">Movado</span>
                  <div className="product__quantity">
                    <input type="number" min="1" max="10" />
                  </div>
                </div>
                <div className="detail__right">
                  <span className="product__price">x 3.000.000 đ</span>
                </div>
              </div>
              <div className="item__button">
                <box-icon type="solid" name="coffee-togo"></box-icon>
              </div>
            </li>
            <li className="cart__list-item">
              <div className="item__img">
                <img src={movado} alt="" />
              </div>
              <div className="item__detail">
                <div className="detail__left">
                  <span className="product__name">Movado</span>
                  <div className="product__quantity">
                    <input type="number" min="1" max="10" />
                  </div>
                </div>
                <div className="detail__right">
                  <span className="product__price">x 3.000.000 đ</span>
                </div>
              </div>
              <div className="item__button">
                <box-icon type="solid" name="coffee-togo"></box-icon>
              </div>
            </li>
            <li className="cart__list-item">
              <div className="item__img">
                <img src={movado} alt="" />
              </div>
              <div className="item__detail">
                <div className="detail__left">
                  <span className="product__name">Movado</span>
                  <div className="product__quantity">
                    <input type="number" min="1" max="10" />
                  </div>
                </div>
                <div className="detail__right">
                  <span className="product__price">x 3.000.000 đ</span>
                </div>
              </div>
              <div className="item__button">
                <box-icon type="solid" name="coffee-togo"></box-icon>
              </div>
            </li>
            <li className="cart__list-item">
              <div className="item__img">
                <img src={movado} alt="" />
              </div>
              <div className="item__detail">
                <div className="detail__left">
                  <span className="product__name">Movado</span>
                  <div className="product__quantity">
                    <input type="number" min="1" max="10" />
                  </div>
                </div>
                <div className="detail__right">
                  <span className="product__price">x 3.000.000 đ</span>
                </div>
              </div>
              <div className="item__button">
                <box-icon type="solid" name="coffee-togo"></box-icon>
              </div>
            </li>
            <li className="cart__list-item">
              <div className="item__img">
                <img src={movado} alt="" />
              </div>
              <div className="item__detail">
                <div className="detail__left">
                  <span className="product__name">Movado</span>
                  <div className="product__quantity">
                    <input type="number" min="1" max="10" />
                  </div>
                </div>
                <div className="detail__right">
                  <span className="product__price">x 3.000.000 đ</span>
                </div>
              </div>
              <div className="item__button">
                <box-icon type="solid" name="coffee-togo"></box-icon>
              </div>
            </li>
          </ul>
          <div className="cart__total">
            <div className="total__detail">
              <div className="total__price">
                <p>THÀNH TIỀN: </p>
                <span>3.000.000 đ</span>
              </div>
              <div className="total__button">
                <Link to="/" className="button__checkout">
                  ĐẶT HÀNG
                </Link>
              </div>
            </div>
          </div>
        </div>
        <div className="cart__footer"></div>
      </div>
    </div>
  );
}

export default CartModal;
