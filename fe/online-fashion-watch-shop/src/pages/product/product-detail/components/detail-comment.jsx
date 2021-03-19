import React from "react";

DetailComment.propTypes = {};

function DetailComment(props) {
  return (
    <div className="product__comment">
      <div className="comment__title">
        <span>ĐÁNH GIÁ SẢN PHẨM</span>
      </div>
      <div className="comment__content">
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
              <p>Người đánh giá:</p>
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
              <p>Người đánh giá:</p>
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
              <p>Người đánh giá:</p>
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
              <p>Người đánh giá:</p>
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
              <p>Người đánh giá:</p>
              <span>Tên</span>
            </div>
          </div>
        </div>
      </div>
      <div className="pagination">
        <button className="pagination__prev">Prev</button>
        <button className="pagination__next">Next</button>
      </div>
    </div>
  );
}

export default DetailComment;
