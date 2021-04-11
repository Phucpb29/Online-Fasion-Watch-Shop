import "boxicons";
import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import Swal from "sweetalert2";
import cartApi from "../../api/cartApi";
import "./css/cart.css";

CartModal.propTypes = {
  statusCart: PropTypes.bool,
  closeCart: PropTypes.func,
  statusToken: PropTypes.bool,
  cartChange: PropTypes.bool,
  handleChangeCart: PropTypes.func,
};

CartModal.DefaultPropTypes = {
  statusCart: false,
  closeCart: false,
  statusToken: false,
  cartChange: false,
  handleChangeCart: null,
};

function CartModal(props) {
  const {
    statusCart,
    closeCart,
    statusToken,
    cartChange,
    handleChangeCart,
  } = props;
  const [cart, setCart] = useState([]);
  const [totalPrice, setTotalPrice] = useState(0);

  // đóng giỏ hàng
  const handleCloseCart = () => {
    closeCart();
  };

  // lấy giỏ hàng khi user đăng nhập
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await cartApi.viewCart();
        if (response.status === 200) {
          setCart(response.data);
        } else {
          await cartApi.createCart();
          setCart([]);
        }
      }
    };
    fetchData();
  }, [statusToken, cartChange]);

  // re-render lại tổng tiền giỏ hàng
  useEffect(() => {
    const fetchTotalPrice = async () => {
      if (cart.length > 0) {
        const newTotalPrice = await cart.reduce(
          (total, item) => Number(total) + Number(item.totalPrice),
          0
        );
        setTotalPrice(newTotalPrice);
      }
    };
    fetchTotalPrice();
  }, [cart]);

  // tăng số lượng sản phẩm
  const handleIncrease = (cartDetailID, quantity) => {
    try {
      if (quantity < 10) {
        quantity = quantity + 1;
        cartApi.updateProduct(cartDetailID, quantity).then(function (response) {
          if (response.status === 200) {
            handleChangeCart();
          }
        });
      } else {
        Swal.fire({
          title: "THÔNG BÁO",
          text: "SỐ LƯỢNG SẢN PHẨM TỐI ĐA LÀ 10",
          icon: "error",
          showConfirmButton: true,
        });
      }
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "LỖI! XIN VUI LÒNG THỬ LẠI",
        icon: "error",
        showConfirmButton: true,
      });
    }
  };

  // giảm số lượng sản phẩm
  const handleDecrease = (cartDetailID, quantity) => {
    try {
      if (quantity > 1) {
        quantity = quantity - 1;
        cartApi.updateProduct(cartDetailID, quantity).then(function (response) {
          if (response.status === 200) {
            handleChangeCart();
          }
        });
      } else {
        Swal.fire({
          title: "THÔNG BÁO",
          text: "SỐ LƯỢNG SẢN PHẨM TỐI THIỂU LÀ 1",
          icon: "error",
          showConfirmButton: true,
        });
      }
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "LỖI! XIN VUI LÒNG THỬ LẠI",
        icon: "error",
        showConfirmButton: true,
      });
    }
  };

  // xoá sản phẩm
  const handleDelete = (id) => {
    try {
      cartApi.deleteProduct(id).then(function (response) {
        if (response.status === 200) {
          Swal.fire({
            title: "THÔNG BÁO",
            text: response.data,
            icon: "success",
            showConfirmButton: true,
          }).then((value) => {
            if (value.value) {
              handleChangeCart();
            }
          });
        } else {
          Swal.fire({
            title: "THÔNG BÁO",
            text: response.data,
            icon: "error",
            showConfirmButton: true,
          });
        }
      });
    } catch (error) {
      console.log(error);
    }
  };

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
        {cart.length <= 0 ? (
          <div className="cart__notfound">
            <div className="cart__notfound-message">
              Hiện tại chưa có sản phẩm nào trong giỏ hàng của bạn
            </div>
            <div className="cart__notfound-button">
              <button className="btn__back" onClick={handleCloseCart}>
                <span>QUAY LẠI MUA HÀNG</span>
              </button>
            </div>
          </div>
        ) : (
          <>
            <div className="cart__body">
              <ul className="cart__list">
                {cart.map((item) => (
                  <li className="cart__list-item" key={item.product.id}>
                    <div className="item__img">
                      <img src={item.indexImage} alt="" />
                    </div>
                    <div className="item__detail">
                      <div className="detail__left">
                        <span className="product__name">
                          {item.product.name}
                        </span>
                        <div className="product__quantity">
                          <button
                            className="product__button"
                            onClick={() =>
                              handleDecrease(item.cartDetailID, item.quantity)
                            }
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
                            onClick={() =>
                              handleIncrease(item.cartDetailID, item.quantity)
                            }
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
                      <box-icon
                        type="solid"
                        name="coffee-togo"
                        onClick={() => handleDelete(item.cartDetailID)}
                      ></box-icon>
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
          </>
        )}
        <div className="cart__footer">
          <div className="cart__footer-policy">
            <box-icon name="check-shield"></box-icon>
            <span>Bảo hành 10 năm lỗi nhà sản xuất</span>
          </div>
          <div className="cart__footer-policy">
            <box-icon name="truck" type="solid"></box-icon>
            <span>Freeship với đơn hàng 700k</span>
          </div>
        </div>
      </div>
    </div>
  );
}

export default CartModal;
