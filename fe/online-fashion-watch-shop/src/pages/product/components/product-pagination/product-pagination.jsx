import React, { useState } from "react";
import PropTypes from "prop-types";
import "./css/product-pagination.css";

Pagination.propTypes = {
  cout: PropTypes.number,
  page: PropTypes.number,
  handleChangeFirstPage: PropTypes.func,
  handleChangePage: PropTypes.func,
  handleChangeLastPage: PropTypes.func,
};

Pagination.DefaultPropTypes = {
  count: 0,
  page: 0,
  handleChangeFirstPage: null,
  handleChangePage: null,
  handleChangeLastPage: null,
};

function Pagination(props) {
  const {
    count,
    page,
    handleChangeFirstPage,
    handleChangePage,
    handleChangeLastPage,
  } = props;
  function firstPage() {
    if (handleChangeFirstPage) {
      handleChangeFirstPage();
    }
  }
  function lastPage() {
    if (handleChangeLastPage) {
      handleChangeLastPage();
    }
  }
  function changePage(index) {
    if (handleChangePage) {
      handleChangePage(index);
    }
  }
  return (
    <div className="product__pagination">
      <button className="pagination__first" onClick={firstPage}>
        First
      </button>
      <ul className="pagination__list">
        {[...Array(count).keys()].map((index) => (
          <li
            className={
              index === page
                ? "pagination__item pagination__active"
                : "pagination__item"
            }
            key={index}
            onClick={() => changePage(index)}
          >
            {index + 1}
          </li>
        ))}
      </ul>
      <button className="pagination__last" onClick={lastPage}>
        Last
      </button>
    </div>
  );
}

export default Pagination;
