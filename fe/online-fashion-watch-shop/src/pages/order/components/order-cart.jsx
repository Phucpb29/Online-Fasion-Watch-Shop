import React, { useEffect, useState } from "react";
import movado from "../../../assets/image/movado.jpg";
import cartApi from "../../../api/cartApi";

function OrderCart() {
  const [cart, setCart] = useState([]);
  const [totalPrice, setTotalPrice] = useState(0);

  // render sản phẩm từ giỏ hàng
  useEffect(() => {
    const fetchDataCart = async () => {
      const dataToken = await sessionStorage.getItem("accessToken");
      const statusToken = (await dataToken) != null ? true : false;
      if (statusToken) {
        const response = await cartApi.viewCart();
        setCart(response.data);
      } else {
        const response = await localStorage.getItem("cart");
        const data = response != null ? JSON.parse(response) : [];
        setCart(data);
      }
    };
    fetchDataCart();
  }, []);

  // re-render lại tổng tiền giỏ hàng
  useEffect(() => {
    const fetchTotalPrice = async () => {
      const newTotalPrice = await cart.reduce(
        (total, item) =>
          Number(total) + Number(item.product_Price * item.quantity),
        0
      );

      setTotalPrice(
        new Intl.NumberFormat("vi-VN", {
          style: "currency",
          currency: "VND",
        }).format(newTotalPrice)
      );
    };
    fetchTotalPrice();
    return () => {
      fetchTotalPrice();
    };
  }, [cart]);

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
                  src={movado}
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
                {item.issale === true ? (
                  <>
                    <span className>
                      {new Intl.NumberFormat("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      }).format(item.total)}
                      {/* <span>{item.total}</span>
                      <span>299</span>
                      <span>.</span>
                      <span>000</span> 
                      <span>&nbsp;</span>
                      <span>₫</span> */}
                    </span>
                    <span class="orderSummaryItem-priceOriginal-2Gn">
                      {/* <span>2</span>
                      <span>.</span>
                      <span>599</span>
                      <span>.</span>
                      <span>000</span>
                      <span>&nbsp;</span>
                      <span>₫</span> */}
                    </span>
                  </>
                ) : (
                  <span className>
                    {new Intl.NumberFormat("vi-VN", {
                      style: "currency",
                      currency: "VND",
                    }).format(item.total)}
                    {/* <span>{item.total}</span>
                    <span>299</span>
                    <span>.</span>
                    <span>000</span>
                    <span>&nbsp;</span>
                    <span>₫</span> */}
                  </span>
                )}
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
                style={{}}
              />
            </span>
            <span className="fieldIcons-before-3Wt" />
            <span className="fieldIcons-after-3je" />
          </span>
          <p className="message-root-2kZ" />
        </div>
        <div className="field-root-3Y5">
          <button
            className="couponCode-applyButton-3J3 button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-headline2-2Vd couponCode-applyButton-3J3 button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-headline2-2Vd"
            type="submit"
            style={{}}
          >
            <span className="button-content-3AN" style={{}}>
              Sử dụng
            </span>
          </button>
        </div>
      </form>
      <div className="priceSummary-root-L4M">
        <div className="priceSummary-lineItems-JOi">
          <span className="priceSummary-lineItemLabel-3q-">Thành tiền</span>
          <span className="priceSummary-price-2_b typography-headline2-2Vd">
            <span>{totalPrice}</span>
            {/* <span>.</span>
            <span>000</span> */}
          </span>
          {/* <span class="priceSummary-lineItemLabel-3q-">Giảm giá</span>
          <span class="priceSummary-price-2_b typography-headline2-2Vd priceSummary-priceDiscount-1lC">
            -<span>59</span>
            <span>.</span>
            <span>800</span>
            <span>&nbsp;</span>
            <span>₫</span>
          </span> */}
          <div className="priceSummary-dividerTotal-20D priceSummary-divider-3Iz" />
          <span className="priceSummary-totalLabel-3bk priceSummary-lineItemLabel-3q-">
            Tổng
          </span>
          <span className="priceSummary-totalPrice-2pP typography-headline1-1o-">
            <span>{totalPrice}</span>
            {/* <span>.</span>
            <span>000</span> */}
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
