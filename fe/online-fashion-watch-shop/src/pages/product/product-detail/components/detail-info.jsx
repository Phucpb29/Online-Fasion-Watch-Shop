import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import productApi from "../../../../api/productApi";
import movado from "../../../../assets/image/movado.jpg";

DetailInfo.propTypes = {
  id: PropTypes.number,
};

function DetailInfo(props) {
  const { id } = props;
  const [detailData, setDetailData] = useState({});

  // thông tin chi tiết sản phẩm
  useEffect(() => {
    const fecthProductDetailData = async () => {
      const response = await productApi.getProductDetailById(id);
      setDetailData(response.data);
    };
    fecthProductDetailData();
  }, [id]);

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
          <span></span>
        </div>
      </div>
    </>
  );
}

export default DetailInfo;
