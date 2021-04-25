import PropTypes from "prop-types";
import React from "react";
import Error from "../../../../components/error/error";
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
        {orderList.length <= 0 ? (
          <Error text={"Bạn chưa có lịch sử mua hàng"} />
        ) : (
          <>
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
                    {item.history_purchase.invoice.status === 0 && (
                      <span className="status-product status">
                        ĐANG CHỜ XỬ LÍ
                      </span>
                    )}
                    {item.history_purchase.invoice.status === 1 && (
                      <span className="status-product status">ĐANG XỬ LÍ</span>
                    )}
                    {item.history_purchase.invoice.status === 2 && (
                      <span className="status-product status-waiting">
                        ĐANG VẬN CHUYỂN
                      </span>
                    )}
                    {item.history_purchase.invoice.status === 3 && (
                      <span className="status-product status-success">
                        ĐÃ GIAO
                      </span>
                    )}
                    {item.history_purchase.invoice.status === 4 && (
                      <span className="status-product status-cancel">
                        ĐÃ HUỶ
                      </span>
                    )}
                  </div>
                  <div className="tongtien">
                    <p>Tổng tiền :</p>
                    <>
                      {item.history_purchase.invoice.voucher === null ? (
                        <span>
                          {new Intl.NumberFormat("vi-VN", {
                            style: "currency",
                            currency: "VND",
                          }).format(item.history_purchase.total)}
                        </span>
                      ) : (
                        <>
                          {item.history_purchase.invoice.voucher.value > 100 ? (
                            <span>
                              {new Intl.NumberFormat("vi-VN", {
                                style: "currency",
                                currency: "VND",
                              }).format(
                                item.history_purchase.total -
                                  item.history_purchase.invoice.voucher.value
                              )}
                            </span>
                          ) : (
                            <span>
                              {new Intl.NumberFormat("vi-VN", {
                                style: "currency",
                                currency: "VND",
                              }).format(
                                item.history_purchase.total -
                                  item.history_purchase.total *
                                    (item.history_purchase.invoice.voucher
                                      .value /
                                      100)
                              )}
                            </span>
                          )}
                        </>
                      )}
                    </>
                  </div>
                  {item.history_purchase.invoice.status === 3 && (
                    <div className="button">
                      <button
                        className="button__DG"
                        onClick={() => handleOpen(item)}
                      >
                        ĐÁNH GIÁ
                      </button>
                    </div>
                  )}
                </div>
              </div>
            ))}
          </>
        )}
      </div>
    </div>
  );
}

export default AccountOrder;
