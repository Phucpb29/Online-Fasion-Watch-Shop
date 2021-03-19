import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import productApi from "../../../../api/productApi";
import movado from "../../../../assets/image/movado.jpg";

DetailInfo.propTypes = {
  id: PropTypes.number,
};

function DetailInfo(props) {
  const { id } = props;
  // thông tin chi tiết sản phẩm
  const [detailData, setDetailData] = useState({});
  useEffect(() => {
    const fecthProductDetailData = async () => {
      const response = await productApi.getProductDetailById(id);
      setDetailData(response.data.product);
    };
    setTimeout(fecthProductDetailData(), 1500);
  }, [id]);

  // thêm sản phẩm vào giỏ hàng (lưu vào local storage)
  const [cart, setCart] = useState([]);
  const handleAddProduct = (item) => {
    const cartList = localStorage.getItem("cart");
    setCart(cartList);
    console.log("Cart", cart);
    const newCart = [...cart];
    console.log("New cart", newCart);
    newCart.push(item);
    console.log("Item", item);
    console.log("New cart 2", newCart);
    setCart(newCart);
    localStorage.setItem("cart", cart);
  };

  return (
    <>
      <div className="product__detail">
        <div className="product__img">
          <div className="img__main">
            <img src={movado} alt="" />
          </div>
          <div className="img__thumbnail"></div>
        </div>
        <div className="product__info">
          <div className="product__info-group">
            <h1 className="product__name">{detailData.name}</h1>
          </div>
          <div className="product__info-group">
            <div className="product__brand">
              <span className="product__title">Thương hiệu:</span>
            </div>
            <div className="product__made">
              <span className="product__title">Xuất sứ: </span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__gender">
              <span className="product__title">Giới tính:</span>
              <span>{detailData.gender ? "Nam" : "Nữ"}</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__price">
              <span className="product__title">Giá sản phẩm:</span>
              <span>{detailData.price}</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__status">
              <span className="product__title">Tình trạng: </span>
              {/* <span>{statusProduct ? "Còn hàng" : "Hết hàng"}</span> */}
              <span></span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__rate">
              <span className="product__title">Đánh giá:</span>
            </div>
          </div>
          <div className="product__info-group">
            <div className="product__policy">
              <span className="product__title">Bảo hành:</span>
            </div>
          </div>
          <div className="product__info-group">
            {/* {statusProduct && (
              <button className="product__button">
                <span>THÊM VÀO GIỎ HÀNG</span>
              </button>
            )} */}
            <button
              className="product__button"
              onClick={() => handleAddProduct(detailData)}
            >
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
          {/* <span>{detailData.product.description}</span> */}
        </div>
      </div>
    </>
  );
}

export default DetailInfo;
