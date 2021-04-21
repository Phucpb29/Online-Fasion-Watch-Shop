import React, { useState } from "react";
import PropTypes from "prop-types";
import "./css/dialog.css";
import img from "../../../../assets/image/rolex.jpg";
import ReactStars from "react-rating-stars-component";
import dashboardApi from "../../../../api/dashboardApi";
import Swal from "sweetalert2";

DialogComment.propTypes = {
  orderInfo: PropTypes.object,
  statusDialog: PropTypes.bool,
  closeDialog: PropTypes.func,
};

DialogComment.DefaultPropTypes = {
  orderInfo: {},
  statusDialog: false,
  closeDialog: null,
};

function DialogComment(props) {
  const { orderInfo, statusDialog, closeDialog } = props;
  const [comment, setComment] = useState("");
  const [rate, setRate] = useState(0);

  // đóng dialog
  function handleCloseDialog() {
    if (closeDialog) {
      closeDialog();
    }
  }

  // thay đổi rate star
  const handleChangeRateStar = (newRating) => {
    setRate(newRating);
  };

  // thay đổi comment
  const handleChangeComment = (e) => {
    setComment(e.target.value);
  };

  // đánh giá sản phẩm
  const handleSubmitComment = (e) => {
    e.preventDefault();
    try {
      dashboardApi
        .commentOrder({
          product_id: orderInfo.history_purchase.product.id,
          rate: rate,
          content: comment,
        })
        .then(function (response) {
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "success",
              showConfirmButton: true,
            }).then((result) => {
              if (result.isConfirmed) {
                closeDialog();
              }
            });
          } else {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "error",
              showConfirmButton: true,
            }).then((result) => {
              if (result.isConfirmed) {
                closeDialog();
              }
            });
          }
        });
      setRate(0);
      setComment("");
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "CÓ LỖI XẢY RA! VUI LÒNG THỬ LẠI",
        icon: "success",
        showConfirmButton: true,
      });
    }
  };

  return (
    <>
      {Object.keys(orderInfo).length > 0 && (
        <div
          className={
            statusDialog ? "dialog__comment dialog__active" : "dialog__comment"
          }
        >
          <div className="form__comment">
            <div className="form__header">
              <div className="header__title">
                <p>Đánh giá sản phẩm</p>
              </div>
              <div className="header__button">
                <button className="btn__close" onClick={handleCloseDialog}>
                  X
                </button>
              </div>
            </div>
            <div className="form__body">
              <form className="form__control">
                <div className="form__control-img">
                  <img src={orderInfo.indexImage} alt="" />
                </div>
                <div className="form__control-sp">
                  <p>{orderInfo.history_purchase.product.name}</p>
                </div>
                <div className="form__control-radio">
                  <ReactStars
                    count={5}
                    onChange={handleChangeRateStar}
                    size={24}
                    isHalf={true}
                    emptyIcon={<i className="far fa-star"></i>}
                    halfIcon={<i className="fa fa-star-half-alt"></i>}
                    fullIcon={<i className="fa fa-star"></i>}
                    activeColor="#ffd700"
                  />
                </div>
                <div className="textarea">
                  <textarea
                    name="comment"
                    value={comment}
                    onChange={handleChangeComment}
                    placeholder="Đánh giá chất lượng sản phẩm tại đây"
                  />
                </div>
                <div className="text">
                  <p>Cảm ơn bạn đã đánh giá sản phẩm </p>
                  <p>của chúng tôi</p>
                </div>
                <div className="button">
                  <button
                    type="button"
                    className="button-trolai"
                    onClick={handleCloseDialog}
                  >
                    TRỞ LẠI
                  </button>
                  <button
                    className="button-danhgia"
                    onClick={handleSubmitComment}
                  >
                    ĐÁNH GIÁ
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      )}
    </>
  );
}

export default DialogComment;
