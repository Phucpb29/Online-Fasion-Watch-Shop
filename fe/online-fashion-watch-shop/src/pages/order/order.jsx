import React from "react";
import "./css/order.css";
import sub_img from "../../assets/image/aura_rings_shadow_8_.png";
// import '@fortawesome/fontawesome-free/css/all.min.css';
import "boxicons";

function Order() {
  return (
    <div className="row">
      <div className="col-1">
        <div className="container">
          <div className="card-col-1">
            <div className="col-1-card-Header">
              <h5 className="col-1-card-Title">THÔNG TIN KHÁCH HÀNG</h5>
            </div>
            <div className="col-1-card-Text">
              Cảm ơn bạn đã tin tưởng và mua hàng tại shop D.W Fashion.
            </div>
            <div className="col-1-card-Text">
              Phương thức vận chuyển là{" "}
              <span style={{ color: "rgb(59, 177, 0)", fontWeight: "bold" }}>
                FREESHIP
              </span>{" "}
              với đơn hàng từ 1.500.000 VND.
            </div>
            <div className="oneStep-formArea-2ew">
              <form>
                <div className="col-1-input">
                  <input
                    type="text"
                    name="name"
                    className="field-input"
                    placeholder="Họ tên"
                    required
                    autoComplete="name"
                  />
                  <label className="label-input100" htmlFor="name">
                    <span>
                    <box-icon type="solid" name="user"></box-icon>
                    </span>
                  </label>
                </div>
                <div className="col-1-input">
                  <input
                    type="email"
                    name="email"
                    className="field-input"
                    placeholder="Email"
                    required
                    autoComplete="email"
                  />
                  <label className="label-input100" htmlFor="name">
                    <span>
                    <box-icon name="mail-send"></box-icon>
                    </span>
                  </label>
                </div>
                <div className="col-1-input">
                  <input
                    type="phone"
                    name="phone"
                    className="field-input"
                    placeholder="Số điện thoại"
                    required
                    autoComplete="tel"
                  />
                  <label className="label-input100" htmlFor="name">
                    <span>
                    <box-icon name='phone' type='solid' ></box-icon>
                    </span>
                  </label>
                </div>
              </form>
            </div>
            <div className="col-1-input">
              <input
                type="text"
                name="address"
                className="field-input"
                placeholder="Địa chỉ nhận hàng"
                required
                autoComplete="shipping street-address"
              />
              <label className="label-input100" htmlFor="name">
                <span>
                <box-icon name='map' type='solid' ></box-icon>
                </span>
              </label>
            </div>
          </div>
          <div style={{ textAlign: "center" }}>
            <button
              type="submit"
              className="oneStep-formSubmitBtn-yeP button-root_normalPriority-3zg button-root-2JQ clickable-root-1G6 typography-bodyBold-2Ua typography-body-1BC typography-body-1BC"
            >
              ĐẶT HÀNG
            </button>
          </div>
          <div className="col-1-card-footer">
            <p>
              *Lưu ý: D.W Fashion sẽ liên lạc lại với bạn trong 24h để xác nhận đơn
              hàng.
            </p>
            <br />
            <p>
              HOTLINE: <a href="tel:+0123456789">0123456789</a>
            </p>
          </div>
        </div>
      </div>
      <div className="col-2">
        <div className="container">
          <h1 className="col-2-card-title">Giỏ hàng của bạn</h1>
          <div className="col-2-card-order">
            <div className="col-2-card-titleg">
              <span>SẢN PHẨM</span>
              <span>GIÁ</span>
            </div>
            <div className="col-2-card-order-details">
              <div className="col-2-card-order-details-grid">
                <div className="image-container-thumbnail image-container">
                  <img
                    loading="lazy"
                    alt="O RING"
                    className="image-image-2gD image-loaded-SHk"
                    height={70}
                    sizes="70px"
                    src={sub_img}
                    width={70}
                  />
                </div>
                <span className="col-2-card-badge">1</span>
                <div className="col-2-card-info">
                  <span className="orderSummaryItem-name-2CZ typography-gothicBody-3Gm">
                    O RING
                  </span>
                  <span className="orderSummaryItem-category-1bK typography-gothicBody-3Gm" />
                </div>
                <dl className="col-2-card-options">
                  <dt className="productOptions-optionLabel-2fm typography-gothicBody-3Gm">
                    Ring size : 5
                  </dt>
                </dl>
                <div className="col-2-card-price">
                  <span className>
                    <span>299</span>
                    <span>.</span>
                    <span>000</span>
                    <span>&nbsp;</span>
                    <span>₫</span>
                  </span>
                </div>
              </div>
            </div>
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
                <span>299</span>
                <span>.</span>
                <span>000</span>
                <span>&nbsp;</span>
                <span>₫</span>
              </span>
              <div className="priceSummary-dividerTotal-20D priceSummary-divider-3Iz" />
              <span className="priceSummary-totalLabel-3bk priceSummary-lineItemLabel-3q-">
                Tổng
              </span>
              <span className="priceSummary-totalPrice-2pP typography-headline1-1o-">
                <span>299</span>
                <span>.</span>
                <span>000</span>
                <span>&nbsp;</span>
                <span>₫</span>
              </span>
            </div>
          </div>
          <div className="orderSummary-vat_helptext-1uB typography-body-1BC">
            (Giá đã bao gồm VAT)
          </div>
        </div>
      </div>
    </div>
  );
}

export default Order;
