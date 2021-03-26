import React, { useState, useEffect } from "react";
import PropTypes from "prop-types";
import commentApi from "../../../../api/commentApi";

DetailComment.propTypes = {
  id: PropTypes.number,
};

function DetailComment(props) {
  const { id } = props;

  const [page, setPage] = useState("0"); // số trang
  const [size, setSize] = useState("6"); // số comment của một trang

  // lấy tổng số comment của sản phẩm
  const [countComment, setCountComment] = useState("0");
  useEffect(() => {
    const fetchData = async () => {
      const response = await commentApi.getCountCommentByProductId(6, id);
      setCountComment(response.data);
      console.log(countComment);
    };
    fetchData();
    return () => {
      clearTimeout(fetchData());
    };
  }, [id]);

  // lấy danh sách comment của sản phẩm
  const [comment, setComment] = useState([]);
  useEffect(() => {
    const fetchData = async () => {
      const response = await commentApi.getCommentByProductId(page, size, id);
      setComment(response.data);
    };

    fetchData();
    return () => {
      clearTimeout(fetchData());
    };
  }, [id, page, size]);

  return (
    <div className="product__comment">
      <div className="comment__title">
        <span>ĐÁNH GIÁ SẢN PHẨM</span>
      </div>
      <div className="comment__content">
        {comment.map((item) => (
          <div className="comment__box" key={item.id}>
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
        <button className="pagination__prev">Prev</button>
        <ul className="pagination__list">
          {[...Array(10)].map((i) => (
            <li className="pagination__list-item" key={i}>
              <button>{i}</button>
            </li>
          ))}
        </ul>
        <button className="pagination__next">Next</button>
      </div>
    </div>
  );
}

export default DetailComment;
