import PropTypes from "prop-types";
import React from "react";
import Swal from "sweetalert2";
import cartApi from "../../../../api/cartApi";
import "boxicons";
import wishlistApi from "../../../../api/wishlistApi";

DetailInfo.propTypes = {
  product: PropTypes.object,
  brand: PropTypes.string,
  indexImage: PropTypes.string,
  addtionalImages: PropTypes.array,
  handleAddProduct: PropTypes.func,
  handleLikeProduct: PropTypes.func,
};

DetailInfo.DefaultPropTypes = {
  product: {},
  brand: "",
  indexImage: "",
  addtionalImages: [],
  handleAddProduct: null,
  handleLikeProduct: null,
};

function DetailInfo(props) {
  const {
    product,
    brand,
    indexImage,
    addtionalImages,
    handleAddProduct,
    handleLikeProduct,
  } = props;

  // thêm sản phẩm
  function addProduct(product) {
    try {
      cartApi
        .insertProduct({
          product_id: product.id,
          total: product.price * 1,
          quantity: 1,
          product_price: product.price,
        })
        .then(function (response) {
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "success",
              showConfirmButton: true,
            }).then((value) => {
              if (value.value === true) {
                handleAddProduct();
              }
            });
          } else {
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "error",
              showConfirmButton: true,
            });
          }
        });
    } catch (error) {
      console.log(error);
    }
  }

  // yêu thích sản phẩm
  function likeProduct(id) {
    try {
      wishlistApi.like(id).then(function (response) {
        if (response.status === 200) {
          Swal.fire({
            title: "THÔNG BÁO",
            text: response.data,
            icon: "success",
            showConfirmButton: true,
          }).then((result) => {
            if (result.isConfirmed) {
              handleLikeProduct();
            }
          });
        } else {
          Swal.fire({
            title: "THÔNG BÁO",
            text: response.data,
            icon: "error",
            showConfirmButton: true,
          });
        }
      });
    } catch (error) {
      console.log(error);
      Swal.fire({
        title: "THÔNG BÁO",
        text: "XẢY RA LỖI! VUI LÒNG THỬ LẠI.",
        icon: "error",
        showConfirmButton: true,
      });
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
            <button
              className="product__button-like product__like"
              onClick={() => likeProduct(product.id)}
            >
              <span>
                <box-icon name="heart" type="solid"></box-icon>
              </span>
            </button>
            {product.quantity > 0 && (
              <button
                className="product__button product__add"
                onClick={() => addProduct(product)}
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
