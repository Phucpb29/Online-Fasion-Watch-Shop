import "boxicons";
import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import Swal from "sweetalert2";
import movado from "../../assets/image/movado.jpg";
import "./css/cart.css";

CartModal.propTypes = {
  statusCart: PropTypes.bool,
  closeCart: PropTypes.func,
  handleUpdateProduct: PropTypes.func,
  cartList: PropTypes.array,
};

function CartModal(props) {
  const { statusCart, closeCart, handleUpdateProduct, cartList } = props;
  const [cart, setCart] = useState(cartList);
  const [totalPrice, setTotalPrice] = useState(0);

  const handleCloseCart = () => {
    closeCart();
  };

  // tăng số lượng sản phẩm
  const handleIncrease = (product) => {
    if (product.quantity < 10) {
      product.quantity = product.quantity + 1;
      const newCart = [...cart];
      const index = cart.findIndex((item) => item.id === product.id);
      if (index !== -1) {
        newCart[index] = product;
        setCart(newCart);
        handleUpdateProduct(cart);
      }
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "SỐ LƯỢNG SẢN PHẨM TỐI ĐA LÀ 10",
        icon: "error",
        showConfirmButton: true,
      });
    }
  };

  // giảm số lượng sản phẩm
  const handleDecrease = (product) => {
    if (product.quantity > 1) {
      product.quantity = product.quantity - 1;
      const newCart = [...cart];
      const index = cart.findIndex((item) => item.id === product.id);
      if (index !== -1) {
        newCart[index] = product;
        setCart(newCart);
        handleUpdateProduct(cart);
      }
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "SỐ LƯỢNG SẢN PHẨM TỐI THIỂU LÀ 1",
        icon: "error",
        showConfirmButton: true,
      });
    }
  };

  // re-render lại mỗi khi cartList thay đổi
  // lấy sản phẩm thêm vào modal cart
  useEffect(() => {
    setCart(cartList);
  }, [cartList]);

  // re-render lại tổng tiền giỏ hàng
  useEffect(() => {
    const fetchTotalPrice = async () => {
      const newTotalPrice = await cart.reduce(
        (total, item) =>
          Number(total) + Number(item.product_Price * item.quantity),
        0
      );
      setTotalPrice(newTotalPrice);
    };
    fetchTotalPrice();
    return () => {
      fetchTotalPrice();
    };
  }, [cart]);

  return (
    <div className={statusCart ? "cart cart__active" : "cart"}>
      <div className="cart__detail">
        <div className="cart__header">
          <div className="cart__title">
            <p>Giỏ hàng của bạn</p>
          </div>
          <div className="cart__button">
            <button className="button__close" onClick={handleCloseCart}>
              X
            </button>
          </div>
        </div>
        <div className="cart__body">
          <ul className="cart__list">
            {cart.map((item) => (
              <li className="cart__list-item" key={item.id}>
                <div className="item__img">
                  <img src={movado} alt="" />
                </div>
                <div className="item__detail">
                  <div className="detail__left">
                    <span className="product__name">{item.product.name}</span>
                    <div className="product__quantity">
                      <button
                        className="product__button"
                        onClick={() => handleDecrease(item)}
                      >
                        -
                      </button>
                      <input
                        type="text"
                        min="1"
                        max="10"
                        value={item.quantity}
                        disabled
                      />
                      <button
                        className="product__button"
                        onClick={() => handleIncrease(item)}
                      >
                        +
                      </button>
                    </div>
                  </div>
                  <div className="detail__right">
                    <span className="product__price">
                      x
                      {new Intl.NumberFormat("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      }).format(item.product.price)}
                    </span>
                  </div>
                </div>
                <div className="item__button">
                  <box-icon type="solid" name="coffee-togo"></box-icon>
                </div>
              </li>
            ))}
          </ul>
        </div>
        <div className="cart__total">
          <div className="total__detail">
            <div className="total__price">
              <p>THÀNH TIỀN: </p>
              <span>
                {new Intl.NumberFormat("vi-VN", {
                  style: "currency",
                  currency: "VND",
                }).format(totalPrice)}
              </span>
            </div>
            <div className="total__button">
              <Link
                to="/thanhtoan"
                className="button__checkout"
                onClick={handleCloseCart}
              >
                ĐẶT HÀNG
              </Link>
            </div>
          </div>
        </div>
        <div className="cart__footer"></div>
      </div>
    </div>
  );
}

export default CartModal;
