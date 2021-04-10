import React, { useState } from "react";
import PropTypes from "prop-types";
import "./css/dialog.css";
import img from "../../../../assets/image/rolex.jpg";
import ReactStars from "react-rating-stars-component";

DialogComment.propTypes = {
  statusDialog: PropTypes.bool,
  closeDialog: PropTypes.func,
};

DialogComment.DefaultPropTypes = {
  statusDialog: false,
  closeDialog: null,
};

function DialogComment(props) {
  const { statusDialog, closeDialog } = props;
  let rate = 0;
  // đóng dialog
  function handleCloseDialog() {
    if (closeDialog) {
      closeDialog();
    }
  }

  // thay đổi rate star
  const handleChangeRateStar = (newRating) => {
    if (newRating >= 0) {
      rate = newRating;
      console.log(rate);
    }
  };

  return (
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
              <img src={img} alt="" />
            </div>
            <div className="form__control-sp">
              <p>Tên sản phẩm</p>
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
              <textarea />
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
              <button className="button-danhgia">ĐÁNH GIÁ</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default DialogComment;
