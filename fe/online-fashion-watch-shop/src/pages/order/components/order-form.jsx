import PropTypes from "prop-types";
import React, { useState, useEffect } from "react";

OrderForm.prototype = {
  user: PropTypes.object,
  handleOrderSubmit: PropTypes.func,
};

function OrderForm(props) {
  const { user, handleOrderSubmit } = props;
  const [name, setName] = useState(user.fullname);
  const [email, setEmail] = useState(user.email);
  const [phone, setPhone] = useState(user.phone);
  const [address, setAddress] = useState(user.address);

  const handleChangeName = (e) => {
    setName(e.target.value);
  };

  const handleChangeEmail = (e) => {
    setEmail(e.target.value);
  };

  const handleChangePhone = (e) => {
    setPhone(e.target.value);
  };

  const handleChangeAddress = (e) => {
    setAddress(e.target.value);
  };

  function handleSubmitOrder(id, name, phone, address) {
    if (handleOrderSubmit) {
      handleOrderSubmit(id, name, phone, address);
    }
  }

  return (
    <>
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
                value={name}
                onChange={handleChangeName}
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
                value={email}
                onChange={handleChangeEmail}
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
                value={phone}
                onChange={handleChangePhone}
                autoComplete="tel"
              />
              <label className="label-input100" htmlFor="name">
                <span>
                  <box-icon name="phone" type="solid"></box-icon>
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
            value={address}
            onChange={handleChangeAddress}
            autoComplete="shipping street-address"
          />
          <label className="label-input100" htmlFor="name">
            <span>
              <box-icon name="map" type="solid"></box-icon>
            </span>
          </label>
        </div>
      </div>
      <div style={{ textAlign: "center" }}>
        <button
          type="button"
          onClick={() => handleSubmitOrder(user.id, name, phone, address)}
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
    </>
  );
}

export default OrderForm;
