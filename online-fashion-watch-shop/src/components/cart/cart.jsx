import "boxicons";
import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import Swal from "sweetalert2";
import cartApi from "../../api/cartApi";
import "./css/cart.css";

CartModal.propTypes = {
  cart: PropTypes.array,
  statusCart: PropTypes.bool,
  statusToken: PropTypes.bool,
  closeCart: PropTypes.func,
  handleIncreaseItem: PropTypes.func,
  handleDecreaseItem: PropTypes.func,
  handleRemoveItem: PropTypes.func,
};

CartModal.DefaultPropTypes = {
  cart: [],
  statusCart: false,
  statusToken: false,
  closeCart: false,
  handleIncreaseItem: null,
  handleDecreaseItem: null,
  handleRemoveItem: null,
};

function CartModal(props) {
  const { cart, statusCart, statusToken, closeCart } = props;
  const { handleIncreaseItem, handleDecreaseItem, handleRemoveItem } = props;
  const [totalPrice, setTotalPrice] = useState(0);

  // đóng giỏ hàng
  function handleCloseCart() {
    closeCart();
  }

  // thanh toán
  function handleOrder() {
    if (statusToken && statusToken === true) {
      window.location.replace("/thanh-toan");
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "Bạn chưa đăng nhập. Vui lòng đăng nhập để thanh toán",
        icon: "warning",
        showConfirmButton: true,
      });
    }
  }

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
  async function increaseItem(item, cartDetailID, quantity) {
    if (item.quantity < 10) {
      if (handleIncreaseItem) {
        handleIncreaseItem(item);
      }
      if (statusToken && statusToken === true) {
        quantity = quantity + 1;
        try {
          await cartApi.updateProduct(cartDetailID, quantity);
        } catch (error) {
          Swal.fire({
            title: "THÔNG BÁO",
            text: "Có lỗi xảy ra! Vui lòng thử lại",
            icon: "error",
            showConfirmButton: true,
          });
        }
      }
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "SỐ LƯỢNG SẢN PHẨM TỐI ĐA LÀ 10",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }

  // giảm số lượng sản phẩm
  async function decreaseItem(item, cartDetailID, quantity) {
    if (item.quantity > 1) {
      if (handleDecreaseItem) {
        handleDecreaseItem(item);
      }
      if (statusToken && statusToken === true) {
        quantity = quantity - 1;
        try {
          await cartApi.updateProduct(cartDetailID, quantity);
        } catch (error) {
          Swal.fire({
            title: "THÔNG BÁO",
            text: "Có lỗi xảy ra! Vui lòng thử lại",
            icon: "error",
            showConfirmButton: true,
          });
        }
      }
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "SỐ LƯỢNG SẢN PHẨM TỐI THIỂU LÀ 1",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }

  // xoá sản phẩm
  async function removeItem(item, cartDetailID) {
    if (statusToken && statusToken === true) {
      try {
        await cartApi.deleteProduct(cartDetailID);
      } catch (error) {
        Swal.fire({
          title: "THÔNG BÁO",
          text: "SỐ LƯỢNG SẢN PHẨM TỐI THIỂU LÀ 1",
          icon: "error",
          showConfirmButton: true,
        });
      }
    }
    if (handleRemoveItem) {
      handleRemoveItem(item);
      Swal.fire({
        title: "THÔNG BÁO",
        text: "BỎ SẢN PHẨM KHỎI GIỎ HÀNG THÀNH CÔNG",
        icon: "success",
        showConfirmButton: true,
      });
    }
  }

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
        <>
          {cart && (
            <>
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
                      {cart.map((item, index) => (
                        <li className="cart__list-item" key={index}>
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
                                    decreaseItem(
                                      item,
                                      item.cartDetailID,
                                      item.quantity
                                    )
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
                                    increaseItem(
                                      item,
                                      item.cartDetailID,
                                      item.quantity
                                    )
                                  }
                                >
                                  +
                                </button>
                              </div>
                            </div>
                            {item.product.issale ? (
                              <div className="detail__right-sale">
                                <span className="product__price">
                                  x
                                  {new Intl.NumberFormat("vi-VN", {
                                    style: "currency",
                                    currency: "VND",
                                  }).format(item.product.price)}
                                </span>
                                <span className="product__sale">
                                  x
                                  {new Intl.NumberFormat("vi-VN", {
                                    style: "currency",
                                    currency: "VND",
                                  }).format(item.product.price_sale)}
                                </span>
                              </div>
                            ) : (
                              <div className="detail__right">
                                <span className="product__price">
                                  x
                                  {new Intl.NumberFormat("vi-VN", {
                                    style: "currency",
                                    currency: "VND",
                                  }).format(item.product.price)}
                                </span>
                              </div>
                            )}
                          </div>
                          <div className="item__button">
                            <box-icon
                              type="solid"
                              name="coffee-togo"
                              onClick={() =>
                                removeItem(item, item.cartDetailID)
                              }
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
                        <button
                          className="button__checkout"
                          onClick={handleOrder}
                        >
                          ĐẶT HÀNG
                        </button>
                      </div>
                    </div>
                  </div>
                </>
              )}
            </>
          )}
        </>
        <div className="cart__footer">
          <div className="cart__footer-policy">
            <box-icon name="check-shield"></box-icon>
            <span>Bảo hành 10 năm lỗi nhà sản xuất</span>
          </div>
          <div className="cart__footer-policy">
            <box-icon type="solid" name="car"></box-icon>
            <span>Freeship với đơn hàng 700k</span>
          </div>
        </div>
      </div>
    </div>
  );
}

export default CartModal;
