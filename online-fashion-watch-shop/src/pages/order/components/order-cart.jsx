import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import Swal from "sweetalert2";

OrderCart.prototype = {
  cart: PropTypes.array,
  voucherPrice: PropTypes.number,
  handleGetVoucherPrice: PropTypes.func,
  handleDeleteVoucherPrice: PropTypes.func,
};

OrderCart.DefaultPropTypes = {
  cart: [],
  voucherPrice: 0,
  handleGetVoucherPrice: null,
  handleDeleteVoucherPrice: null,
};

function OrderCart(props) {
  const {
    cart,
    voucherPrice,
    handleGetVoucherPrice,
    handleDeleteVoucherPrice,
  } = props;
  const [totalPrice, setTotalPrice] = useState(0);
  const [total, setTotal] = useState(0);
  const [voucher, setVoucher] = useState("");
  const [isUseVoucher, setIsUseVoucher] = useState(false);

  // re-render lại tổng tiền giỏ hàng
  useEffect(() => {
    const newTotalPrice = cart.reduce(
      (total, item) => Number(total) + Number(item.totalPrice),
      0
    );
    setTotalPrice(newTotalPrice);
  }, [cart, voucherPrice]);

  // re-render lại tổng tiền
  useEffect(() => {
    if (voucherPrice > 0 && voucherPrice <= 100) {
      setTotal(totalPrice - totalPrice * (voucherPrice / 100));
    }
    if (voucherPrice > 100) {
      setTotal(totalPrice - voucherPrice);
    } else {
      setTotal(totalPrice);
    }
  }, [totalPrice, voucherPrice]);

  const handleChangeVoucher = (e) => {
    setVoucher(e.target.value);
  };

  function handleGetVoucher(e) {
    e.preventDefault();
    if (handleGetVoucherPrice) {
      if (voucher.trim().length > 0) {
        setIsUseVoucher(true);
        handleGetVoucherPrice(voucher);
      } else {
        Swal.fire({
          title: "THÔNG BÁO",
          text: "Vui lòng không để trống thông tin",
          icon: "warning",
          showConfirmButton: true,
        });
      }
    }
  }

  function handleDeleteVoucher(e) {
    e.preventDefault();
    setVoucher("");
    setIsUseVoucher(false);
    handleDeleteVoucherPrice();
  }

  return (
    <>
      <h1 className="col-2-card-title">Giỏ hàng của bạn</h1>
      <div className="col-2-card-order">
        <div className="col-2-card-titleg">
          <span>SẢN PHẨM</span>
          <span>GIÁ</span>
        </div>
        {cart.map((item, index) => (
          <div className="col-2-card-order-details" key={index}>
            <div className="col-2-card-order-details-grid">
              <div className="image-container-thumbnail image-container">
                <img
                  loading="lazy"
                  alt="O RING"
                  className="image-image-2gD image-loaded-SHk"
                  height={70}
                  sizes="70px"
                  src={item.indexImage}
                  width={70}
                />
              </div>
              <span className="col-2-card-badge">{item.quantity}</span>
              <div className="col-2-card-info">
                <span className="orderSummaryItem-name-2CZ typography-gothicBody-3Gm">
                  {item.product.name}
                </span>
                <span className="orderSummaryItem-category-1bK typography-gothicBody-3Gm" />
              </div>
              <div className="col-2-card-price">
                <span>
                  {new Intl.NumberFormat("vi-VN", {
                    style: "currency",
                    currency: "VND",
                  }).format(item.totalPrice)}
                </span>
              </div>
            </div>
          </div>
        ))}
      </div>
      <form className="col-2-form">
        <div>
          <span className="couponCode-editFormTextInputFieldIconsRoot-1mW fieldIcons-root-1Be">
            <span className="fieldIcons-input-3Eg">
              <input
                id="couponCode"
                placeholder="Nhập mã giảm giá"
                className="couponCode-couponCodeEntryField-39M textInput-input-3vj field-input"
                name="couponCode"
                value={voucher}
                disabled={isUseVoucher}
                onChange={handleChangeVoucher}
              />
            </span>
            <span className="fieldIcons-before-3Wt" />
            <span className="fieldIcons-after-3je" />
          </span>
          <p className="message-root-2kZ" />
        </div>
        <div className="field-root-3Y5">
          {voucherPrice > 0 ? (
            <>
              <button
                className="couponCode-applyButton-3J3 button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-headline2-2Vd couponCode-applyButton-3J3 button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-headline2-2Vd"
                onClick={handleDeleteVoucher}
              >
                <span className="button-content-3AN">Xoá voucher</span>
              </button>
            </>
          ) : (
            <button
              className="couponCode-applyButton-3J3 button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-headline2-2Vd couponCode-applyButton-3J3 button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-headline2-2Vd"
              onClick={handleGetVoucher}
            >
              <span className="button-content-3AN">Sử dụng</span>
            </button>
          )}
        </div>
      </form>
      <div className="priceSummary-root-L4M">
        <div className="priceSummary-lineItems-JOi">
          <span className="priceSummary-lineItemLabel-3q-">Thành tiền</span>
          <span className="priceSummary-price-2_b typography-headline2-2Vd">
            <span>
              {new Intl.NumberFormat("vi-VN", {
                style: "currency",
                currency: "VND",
              }).format(totalPrice)}
            </span>
          </span>
          {voucherPrice > 0 && (
            <>
              <span className="priceSummary-lineItemLabel-3q-">Giảm giá</span>
              <span className="priceSummary-price-2_b typography-headline2-2Vd priceSummary-priceDiscount-1lC">
                -{" "}
                {new Intl.NumberFormat("vi-VN", {
                  style: "currency",
                  currency: "VND",
                }).format(voucherPrice)}
              </span>
            </>
          )}
          <div className="priceSummary-dividerTotal-20D priceSummary-divider-3Iz" />
          <span className="priceSummary-totalLabel-3bk priceSummary-lineItemLabel-3q-">
            Tổng
          </span>
          <span className="priceSummary-totalPrice-2pP typography-headline1-1o-">
            <span>
              {new Intl.NumberFormat("vi-VN", {
                style: "currency",
                currency: "VND",
              }).format(total)}
            </span>
          </span>
        </div>
      </div>
      <div className="orderSummary-vat_helptext-1uB typography-body-1BC">
        (Giá đã bao gồm VAT)
      </div>
    </>
  );
}

export default OrderCart;
