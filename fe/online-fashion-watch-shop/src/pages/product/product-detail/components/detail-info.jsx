import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import productApi from "../../../../api/productApi";

DetailInfo.propTypes = {
  id: PropTypes.number,
  addProduct: PropTypes.func,
};

function DetailInfo(props) {
  const { id, addProduct } = props;
  // thông tin chi tiết sản phẩm
  const [productDetail, setProductDetail] = useState({}); // thông tin sản phẩm
  const [indexImage, setIndexImage] = useState(""); // hình chính sản phẩm
  useEffect(() => {
    const fecthProductDetailData = async () => {
      const response = await productApi.getProductDetailById(id);
      setProductDetail(response.data.product);
      setIndexImage(response.data.indexImage);
    };
    setTimeout(fecthProductDetailData(), 1500);
    return () => {
      clearTimeout(fecthProductDetailData());
    };
  }, [id]);

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
          <div className="img__thumbnail"></div>
        </div>
        <div className="product__info">
          <div className="product__info-group">
            <h1 className="product__name">{productDetail.name}</h1>
          </div>
          <div className="product__info-group">
            <div className="product__brand">
              <span className="product__title">Thương hiệu:</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__gender">
              <span className="product__title">Giới tính:</span>
              <span>{productDetail.gender ? "Nam" : "Nữ"}</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__price">
              <span className="product__title">Giá sản phẩm:</span>
              <span>{productDetail.price}</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__status">
              <span className="product__title">Tình trạng: </span>
              <span>
                {productDetail.quantity > 0 ? "Còn hàng" : "Hết hàng"}
              </span>
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
            {productDetail.quantity > 0 && (
              <button
                className="product__button"
                onClick={() => handleAddToCart(productDetail)}
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
          <span>{productDetail.description}</span>
        </div>
      </div>
    </>
  );
}

export default DetailInfo;
