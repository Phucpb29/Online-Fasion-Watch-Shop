import PropTypes from "prop-types";
import React from "react";

DetailComment.propTypes = {
  commentList: PropTypes.array,
  countComment: PropTypes.number,
  handleFirstPage: PropTypes.func,
  handleChangePage: PropTypes.func,
  handleLastPage: PropTypes.func,
};

function DetailComment(props) {
  const {
    countComment,
    commentList,
    handleFirstPage,
    handleChangePage,
    handleLastPage,
  } = props;

  const handleClickPageComment = (page) => {
    if (handleChangePage) {
      handleChangePage(page);
    }
  };

  const handleClickFirstPageComment = () => {
    if (handleFirstPage) {
      handleFirstPage();
    }
  };

  const handleClickLastPageComment = () => {
    if (handleLastPage) {
      handleLastPage();
    }
  };

  return (
    <div className="product__comment">
      <div className="comment__title">
        <span>ĐÁNH GIÁ SẢN PHẨM</span>
      </div>
      {commentList.length > 0 ? (
        <>
          <div className="comment__content">
            {commentList.map((item, index) => (
              <div className="comment__box" key={index}>
                <div className="comment__detail">
                  <div className="comment__detail-date">
                    <span>{item.created_date}</span>
                  </div>
                  <div className="comment__detail-title">
                    <h3>Title</h3>
                  </div>
                  <div className="comment__detail-content">
                    <span>{item.content}</span>
                  </div>
                  <div className="comment__detail-user">
                    <p>Người đánh giá</p>
                    <span>{item.user.username}</span>
                  </div>
                </div>
              </div>
            ))}
          </div>
          <div className="pagination">
            <button
              className="pagination__prev"
              onClick={handleClickFirstPageComment}
            >
              First
            </button>
            <ul className="pagination__list">
              {[...Array(countComment).keys()].map((index) => (
                <li
                  className="pagination__list-item"
                  key={index}
                  onClick={() => handleClickPageComment(index)}
                >
                  <button>{index}</button>
                </li>
              ))}
            </ul>
            <button
              className="pagination__next"
              onClick={handleClickLastPageComment}
            >
              Last
            </button>
          </div>
        </>
      ) : (
        <div className="comment__error">
          <span className="comment__error-text">SẢN PHẨM CHƯA CÓ ĐÁNH GIÁ</span>
        </div>
      )}
    </div>
  );
}

export default DetailComment;
