import PropTypes from "prop-types";
import React from "react";
import ReactLoading from "react-loading";
import "./css/product-list.css";

ProductList.propTypes = {
  productList: PropTypes.array,
  changeProductList: PropTypes.bool,
};

ProductList.DefaultPropTypes = {
  productList: [],
  changeProductList: PropTypes.bool,
};

function ProductList(props) {
  const { productList, changeProductList } = props;
  return (
    <div className="product__body">
      {changeProductList ? (
        <div className="product__body-loading">
          <ReactLoading type="spokes" color="#000" height="30px" width="30px" />
        </div>
      ) : (
        <ul className="list__product">
          {productList.map((item) => (
            <li key={item.product.id} className="product__item">
              <div className="product__card">
                <div className="product__card-detail">
                  <div className="product__img">
                    <img src={item.indexImage} alt="" />
                  </div>
                  <div className="product__name">
                    <p>{item.product.name}</p>
                  </div>
                  <div className="product__price">
                    {item.product.issale ? (
                      <>
                        <span className="price">
                          {new Intl.NumberFormat("vi-VN", {
                            style: "currency",
                            currency: "VND",
                          }).format(item.product.price)}
                        </span>
                        <span className="price__sale">
                          {new Intl.NumberFormat("vi-VN", {
                            style: "currency",
                            currency: "VND",
                          }).format(item.product.price_sale)}
                        </span>
                      </>
                    ) : (
                      <>
                        <span>
                          {new Intl.NumberFormat("vi-VN", {
                            style: "currency",
                            currency: "VND",
                          }).format(item.product.price)}
                        </span>
                      </>
                    )}
                  </div>
                  <div className="product__button">
                    <a
                      href={`/san-pham-chi-tiet/${item.product.id}`}
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
      )}
    </div>
  );
}

export default ProductList;
