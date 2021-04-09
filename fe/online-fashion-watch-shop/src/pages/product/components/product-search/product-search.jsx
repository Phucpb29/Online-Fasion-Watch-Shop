import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import productApi from "../../../../api/productApi";
import LoadingOverplay from "../../../../components/loading/loading";
import ReactLoading from "react-loading";
import "./css/product-search.css";

ProductSearch.propTypes = {
  keyword: PropTypes.string,
};

ProductSearch.DefaultPropTypes = {
  keyword: "",
};

function ProductSearch(props) {
  const { keyword } = props;
  const [count, setCount] = useState(0);
  const [page, setPage] = useState(0);
  const [size, setSize] = useState(16);
  const [sort, setSort] = useState("ASC");
  const [productList, setProductList] = useState([]);
  const [loading, setLoading] = useState(true);
  const [changeProductList, setChangeProductList] = useState(true);

  // tìm sản phẩm theo từ khoá
  useEffect(() => {
    const fetchData = async () => {
      if (keyword.length > 0) {
        const responseProduct = await productApi.getProductByKeyWord(
          page,
          size,
          sort,
          keyword
        );
        const responseCount = await productApi.getCountPageProductSearch(
          size,
          keyword
        );
        window.scrollTo({ top: 0, left: 0, behavior: "smooth" });
        setProductList(responseProduct.data);
        setCount(responseCount.data);
        setLoading(false);
        setChangeProductList(false);
      }
    };
    fetchData();
  }, [page, size, sort, keyword]);

  // về page đầu
  function handleFirstPage() {
    setChangeProductList(true);
    setPage(0);
  }

  // thay đổi page
  function handleChangePage(index) {
    setChangeProductList(true);
    setPage(index);
  }

  // tới page cuối
  function handleLastPage() {
    setChangeProductList(true);
    setPage(count - 1);
  }

  // sort
  const handleSelectSort = (e) => {
    setChangeProductList(true);
    setSort(e.target.value);
  };

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="product">
          <div className="product__search">
            {productList.length <= 0 ? (
              <div className="product__box">
                <div className="product__box-error">
                  <div className="error__text">
                    <span>KHÔNG TÌM THẤY SẢN PHẨM TƯƠNG ỨNG</span>
                    <span>XIN THỬ LẠI</span>
                  </div>
                  <div className="error__back">
                    <a href="/" className="error__back-btn">
                      <span>QUAY LẠI TRANG CHỦ</span>
                    </a>
                  </div>
                </div>
              </div>
            ) : (
              <>
                <div className="product__box">
                  <div className="product__box-sort">
                    <div className="sort__left">
                      <span className="sort__text">
                        {productList.length} sản phẩm được tìm thấy
                      </span>
                    </div>
                    <div className="sort__right">
                      <span>Sắp xếp: </span>
                      <div className="sort__box">
                        <select
                          className="sort__list"
                          onChange={handleSelectSort}
                        >
                          <option className="sort__item" value="ASC">
                            Tên: A - Z
                          </option>
                          <option className="sort__item" value="DESC">
                            Tên: Z - A
                          </option>
                          <option className="sort__item" value="MIN">
                            Giá: thấp - cao
                          </option>
                          <option className="sort__item" value="MAX">
                            Giá: cao - thấp
                          </option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                {changeProductList ? (
                  <div className="product__box">
                    <div className="product__body-loading">
                      <ReactLoading
                        type="spokes"
                        color="#000"
                        height="30px"
                        width="30px"
                      />
                    </div>
                  </div>
                ) : (
                  <>
                    <div className="product__box">
                      <div className="product__box-list">
                        <ul className="product__list">
                          {productList.map((item) => (
                            <li
                              className="product__list-item"
                              key={item.product.id}
                            >
                              <div className="product__card">
                                <div className="product__card-detail">
                                  <div className="product__img">
                                    <img src={item.indexImage} alt="" />
                                  </div>
                                  <div className="product__name">
                                    <p>{item.product.name}</p>
                                  </div>
                                  <div className="product__price">
                                    {new Intl.NumberFormat("vi-VN", {
                                      style: "currency",
                                      currency: "VND",
                                    }).format(item.product.price)}
                                  </div>
                                  <div className="product__button">
                                    <a
                                      href={`/sanphamchitiet/${item.product.id}`}
                                      className="button__link"
                                    >
                                      <span>XEM SẢN PHẨM</span>
                                    </a>
                                  </div>
                                </div>
                              </div>
                            </li>
                          ))}
                        </ul>
                      </div>
                    </div>
                    {count > 1 && (
                      <div className="product__box">
                        <div className="product__box-pagination">
                          <button
                            className="pagination__first"
                            onClick={handleFirstPage}
                          >
                            <span>First</span>
                          </button>
                          <ul className="pagination__list">
                            {[...Array(count).keys()].map((index) => (
                              <li
                                className={
                                  page === index
                                    ? "pagination__item pagination__active"
                                    : "pagination__item"
                                }
                                key={index}
                                onClick={() => handleChangePage(index)}
                              >
                                {index + 1}
                              </li>
                            ))}
                          </ul>
                          <button
                            className="pagination__last"
                            onClick={handleLastPage}
                          >
                            <span>Last</span>
                          </button>
                        </div>
                      </div>
                    )}
                  </>
                )}
              </>
            )}
          </div>
        </div>
      )}
    </>
  );
}

export default ProductSearch;
