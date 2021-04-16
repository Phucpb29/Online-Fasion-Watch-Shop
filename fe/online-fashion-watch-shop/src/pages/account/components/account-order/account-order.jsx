import PropTypes from "prop-types";
import React from "react";
import "./css/order.css";

AccountOrder.propTypes = {
  orderList: PropTypes.array,
  openDialog: PropTypes.func,
  handleOpenDialog: PropTypes.func,
};

AccountOrder.DefaultPropTypes = {
  orderList: [],
  openDialog: null,
  handleOpenDialog: null,
};

function AccountOrder(props) {
  const { orderList, openDialog, handleOpenDialog } = props;

  function handleOpen(item) {
    if (openDialog && handleOpenDialog) {
      openDialog();
      handleOpenDialog(item);
    }
  }

  return (
    <div>
      <div className="account__order">
        {orderList.map((item, index) => (
          <div className="account__order-box" key={index}>
            <div className="box__left">
              <div className="image">
                <img src={item.indexImage} alt="" />
              </div>
            </div>
            <div className="box__mid">
              <div className="box__mid-name">
                <span className="name">
                  {item.history_purchase.product.name}
                </span>
              </div>
              <div className="box__mid-price-quantity">
                <div className="box__mid-price">
                  <span>
                    {new Intl.NumberFormat("vi-VN", {
                      style: "currency",
                      currency: "VND",
                    }).format(item.history_purchase.product_Price)}
                  </span>
                  <span>x</span>
                </div>
                <div className="box__mid-quantity">
                  <span>{item.history_purchase.quantity}</span>
                </div>
              </div>
              <div className="box__mid-time">
                <span className="date">Ngày đặt:</span>
                <span>{item.history_purchase.created_date}</span>
                <span className="date">Ngày giao:</span>
                <span>04/02/2021 </span>
              </div>
            </div>
            <div className="box__right">
              <div className="status">
                <span className="status-product">ĐÃ GIAO</span>
              </div>
              <div className="tongtien">
                <p>Tổng tiền :</p>
                <span>
                  {new Intl.NumberFormat("vi-VN", {
                    style: "currency",
                    currency: "VND",
                  }).format(item.history_purchase.total)}
                </span>
              </div>
              <div className="button">
                <button className="button__DG" onClick={() => handleOpen(item)}>
                  ĐÁNH GIÁ
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default AccountOrder;
