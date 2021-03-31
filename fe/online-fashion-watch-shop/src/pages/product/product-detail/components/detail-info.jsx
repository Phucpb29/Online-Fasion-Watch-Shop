import PropTypes from "prop-types";
import React from "react";

DetailInfo.propTypes = {
  product: PropTypes.object,
  brand: PropTypes.string,
  indexImage: PropTypes.string,
  addtionalImages: PropTypes.array,
  addProduct: PropTypes.func,
};

function DetailInfo(props) {
  const { product, brand, indexImage, addtionalImages, addProduct } = props;
  // thêm sản phẩm vào cart list local storage
  function handleAddToCart(product) {
    if (addProduct) {
      addProduct(product);
    }
  }

  return (
    <>
      <div className="product__detail">
        <div className="product__img">
          <div className="img__main">
            <img src={indexImage} alt="" />
          </div>
          <div className="img__thumbnail">
            <ul className="thumbnail__list">
              {addtionalImages.map((item, index) => (
                <li className="thumbnail__list-item" key={index}>
                  <img src={item} alt="" />
                </li>
              ))}
            </ul>
          </div>
        </div>
        <div className="product__info">
          <div className="product__info-group">
            <h1 className="product__name">{product.name}</h1>
          </div>
          <div className="product__info-group">
            <div className="product__brand">
              <span className="product__title">Thương hiệu:</span>
              <span>{brand}</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__gender">
              <span className="product__title">Giới tính:</span>
              <span>{product.gender ? "Nam" : "Nữ"}</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__price">
              <span className="product__title">Giá sản phẩm:</span>
              <span>
                {new Intl.NumberFormat("vi-VN", {
                  style: "currency",
                  currency: "VND",
                }).format(product.price)}
              </span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__status">
              <span className="product__title">Tình trạng: </span>
              <span>{product.quantity > 0 ? "Còn hàng" : "Hết hàng"}</span>
              <span></span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__policy">
              <span className="product__title">Bảo hành:</span>
              <span>Một đổi một trong 30 ngày</span>
            </div>
          </div>
          <div className="product__info-group">
            {product.quantity > 0 && (
              <button
                className="product__button"
                onClick={() => handleAddToCart(product)}
              >
                <span>THÊM VÀO GIỎ HÀNG</span>
              </button>
            )}
          </div>
        </div>
      </div>
      <div className="product__description">
        <div className="description__title">
          <span>MÔ TẢ SẢN PHẨM</span>
        </div>
        <div className="description__content">
          <span>{product.description}</span>
        </div>
      </div>
    </>
  );
}

export default DetailInfo;
