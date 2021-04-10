import React from "react";
import PropTypes from "prop-types";
import "./css/order.css";
import Hinh1 from "../../../../assets/image/omega.jpg";

AccountOrder.propTypes = {
  handleOpenDialog: PropTypes.func,
};

AccountOrder.DefaultPropTypes = {
  handleOpenDialog: null,
};

function AccountOrder(props) {
  const { handleOpenDialog } = props;

  function openDialog() {
    if (handleOpenDialog) {
      handleOpenDialog();
    }
  }

  return (
    <div>
      {/* khung 1 */}
      <div className="account__order">
        <div className="account__order-box ">
          <div className="box__left">
            <div className="image">
              <img src={Hinh1} alt="" />
            </div>
          </div>
          <div className="box__mid">
            <div className="box__mid-name">
              <span className="name">Tên sản phẩm</span>
            </div>
            <div className="box__mid-price-quantity">
              <div className="box__mid-price">
                <span>Giá</span>
                <span>X</span>
              </div>
              <div className="box__mid-quantity">
                <span> Số lượng</span>
              </div>
            </div>
            <div className="box__mid-time">
              <span className="date">Ngày đặt</span>
              <span>:04/02/2021 </span>
              <span className="date">Ngày giao</span>
              <span>:04/02/2021 </span>
            </div>
          </div>

          <div className="box__right">
            <div className="status">
              <span className="status-product">ĐÃ GIAO</span>
            </div>
            <div className="tongtien">
              <p>Tổng tiền :</p>
              <span>100.000.000 VNĐ</span>
            </div>
            <div className="button">
              <button className="button__DG" onClick={openDialog}>
                ĐÁNH GIÁ
              </button>
              <button className="button__CT">XEM CHI TIẾT</button>
            </div>
          </div>
        </div>
        {/* khung2 */}
        <div className="account__order-box ">
          <div className="box__left">
            <div className="image">
              <img src={Hinh1} alt="" />
            </div>
          </div>
          <div className="box__mid">
            <div className="box__mid-name">
              <span className="name">Tên sản phẩm</span>
            </div>
            <div className="box__mid-price-quantity">
              <div className="box__mid-price">
                <span>Giá</span>
                <span>X</span>
              </div>
              <div className="box__mid-quantity">
                <span> Số lượng</span>
              </div>
            </div>
            <div className="box__mid-time">
              <span className="date">Ngày đặt</span>
              <span>:04/02/2021 </span>
              <span className="date">Ngày giao</span>
              <span>:04/02/2021 </span>
            </div>
          </div>

          <div className="box__right">
            <div className="status">
              <span className="status-product1">ĐANG CHỜ XÁC NHẬN</span>
            </div>
            <div className="tongtien">
              <p>Tổng tiền :</p>
              <span>100.000.000 VNĐ</span>
            </div>
            <div className="button">
              {/* <button className="button__DG">ĐÁNH GIÁ</button> */}
              <button className="button__CT">XEM CHI TIẾT</button>
            </div>
          </div>
        </div>
        {/* khung 3 */}
        <div className="account__order-box ">
          <div className="box__left">
            <div className="image">
              <img src={Hinh1} alt="" />
            </div>
          </div>
          <div className="box__mid">
            <div className="box__mid-name">
              <span className="name">Tên sản phẩm</span>
            </div>
            <div className="box__mid-price-quantity">
              <div className="box__mid-price">
                <span>Giá</span>
                <span>X</span>
              </div>
              <div className="box__mid-quantity">
                <span> Số lượng</span>
              </div>
            </div>
            <div className="box__mid-time">
              <span className="date">Ngày đặt</span>
              <span>:04/02/2021 </span>
              <span className="date">Ngày giao</span>
              <span>:04/02/2021 </span>
            </div>
          </div>

          <div className="box__right">
            <div className="status">
              <span className="status-product2">ĐÃ HỦY</span>
            </div>
            <div className="tongtien">
              <p>Tổng tiền :</p>
              <span>100.000.000 VNĐ</span>
            </div>
            <div className="button">
              {/* <button className="button__DG">ĐÁNH GIÁ</button> */}
              <button className="button__CT">XEM CHI TIẾT</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default AccountOrder;
