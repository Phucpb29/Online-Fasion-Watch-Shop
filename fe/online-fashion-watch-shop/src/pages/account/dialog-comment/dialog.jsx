import React from "react";
import PropTypes from "prop-types";
import "./css/dialog.css";
import img from "../../../assets/image/rolex.jpg";
DialogComment.propTypes = {
  isOpenDialog: PropTypes.bool,
};

function DialogComment(props) {
  const { isOpenDialog } = props;
  console.log(isOpenDialog);

  return (
    <div className="dialog__comment">
      <div className="form__comment">
        <div className="form__header">
          <div className="header__title">
            <p>Đánh giá sản phẩm</p>
          </div>
          <div className="header__button">
            <button className="btn__close">X</button>
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
              <p>Rate</p>
              <div className="radio">
                <input type="radio" />
                <span>1</span>
              </div>
              <div className="radio">
                <input type="radio" />
                <span>2</span>
              </div>
              <div className="radio">
                <input type="radio" />
                <span>3</span>
              </div>
              <div className="radio">
                <input type="radio" />
                <span>4</span>
              </div>
              <div className="radio">
                <input type="radio" />
                <span>5</span>
              </div>
            </div>
            <div className="textarea">
              <input type="area" />
            </div>
            <div className="text">
              <p>Cảm ơn bạn đã đánh giá sản phẩm </p> 
              <p>của chúng tôi</p>
            </div>
            <div className="button">
              <button className="button-trolai">TRỞ LẠI</button>
              <button className="button-danhgia">ĐÁNH GIÁ</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}

export default DialogComment;
