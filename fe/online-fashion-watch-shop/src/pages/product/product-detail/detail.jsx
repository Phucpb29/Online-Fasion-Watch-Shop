import React from "react";
import movado from "../../../assets/image/movado.jpg";
import "./css/detail.css";

function ProductDetail() {
  return (
    <div className="main__product">
      <div className="product__detail">
        <div className="product__img">
          <div className="img__main">
            <img src={movado} alt="" />
          </div>
          <div className="img__thumbnail"></div>
        </div>
        <div className="product__info">
          <div className="product__info-group">
            <h1 className="product__name">Tên sản phẩm</h1>
          </div>
          <div className="product__info-group">
            <div className="product__brand">
              <span>Thương hiệu:</span>
            </div>
            <div className="product__made">
              <span>Xuất sứ: </span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__gender">
              <span>Giới tính:</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__price">
              <span>Giá sản phẩm:</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__status">
              <span>Tình trạng: </span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__rate">
              <span>Đánh giá:</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__policy">
              <span>Bảo hành:</span>
            </div>
          </div>
          <div className="product__info-group">
            <button className="product__button">
              <span>THÊM VÀO GIỎ HÀNG</span>
            </button>
          </div>
        </div>
      </div>
      <div className="product__description">
        <div className="description__title">
          <span>MÔ TẢ SẢN PHẨM</span>
        </div>
        <div className="description__content">
          <span>Content</span>
        </div>
      </div>
      <div className="product__property">
        <div className="property__title">
          <span>THÔNG SỐ KĨ THUẬT</span>
        </div>
        <div className="property__content">
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
          <div className="content__box">
            <div className="box__title">
              <span>Số hiệu sản phẩm</span>
            </div>
            <div className="box__content">
              <span>text</span>
            </div>
          </div>
        </div>
      </div>
      <div className="product__comment">
        <div className="comment__title">
          <span>ĐÁNH GIÁ SẢN PHẨM</span>
        </div>
        <div className="comment__content">
          <div className="comment__box">
            <div className="comment__detail">
              <div className="comment__box-date">
                <span>02 - 12 - 2021</span>
              </div>
              <div className="comment__box-title">
                <h3>Title</h3>
              </div>
              <div className="comment__box-content">
                <span>Content</span>
              </div>
              <div className="comment__box-user">
                <p>Người đánh giá</p>
                <span>Tên</span>
              </div>
            </div>
          </div>
          <div className="comment__box">
            <div className="comment__detail">
              <div className="comment__box-date">
                <span>02 - 12 - 2021</span>
              </div>
              <div className="comment__box-title">
                <h3>Title</h3>
              </div>
              <div className="comment__box-content">
                <span>Content</span>
              </div>
              <div className="comment__box-user">
                <p>Người đánh giá</p>
                <span>Tên</span>
              </div>
            </div>
          </div>
          <div className="comment__box">
            <div className="comment__detail">
              <div className="comment__box-date">
                <span>02 - 12 - 2021</span>
              </div>
              <div className="comment__box-title">
                <h3>Title</h3>
              </div>
              <div className="comment__box-content">
                <span>Content</span>
              </div>
              <div className="comment__box-user">
                <p>Người đánh giá</p>
                <span>Tên</span>
              </div>
            </div>
          </div>
          <div className="comment__box">
            <div className="comment__detail">
              <div className="comment__box-date">
                <span>02 - 12 - 2021</span>
              </div>
              <div className="comment__box-title">
                <h3>Title</h3>
              </div>
              <div className="comment__box-content">
                <span>Content</span>
              </div>
              <div className="comment__box-user">
                <p>Người đánh giá</p>
                <span>Tên</span>
              </div>
            </div>
          </div>
          <div className="comment__box">
            <div className="comment__detail">
              <div className="comment__box-date">
                <span>02 - 12 - 2021</span>
              </div>
              <div className="comment__box-title">
                <h3>Title</h3>
              </div>
              <div className="comment__box-content">
                <span>Content</span>
              </div>
              <div className="comment__box-user">
                <p>Người đánh giá</p>
                <span>Tên</span>
              </div>
            </div>
          </div>
          <div className="comment__box">
            <div className="comment__detail">
              <div className="comment__detail-date">
                <span>02 - 12 - 2021</span>
              </div>
              <div className="comment__detail-title">
                <h3>Title</h3>
              </div>
              <div className="comment__detail-content">
                <span>Content</span>
              </div>
              <div className="comment__detail-user">
                <p>Người đánh giá</p>
                <span>Tên</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default ProductDetail;
