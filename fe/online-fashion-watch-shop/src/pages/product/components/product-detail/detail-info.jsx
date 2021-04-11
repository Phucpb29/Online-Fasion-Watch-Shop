import PropTypes from "prop-types";
import React, { useState, useEffect } from "react";
import Swal from "sweetalert2";
import cartApi from "../../../../api/cartApi";
import "boxicons";
import wishlistApi from "../../../../api/wishlistApi";
import ReactStars from "react-rating-stars-component";

DetailInfo.propTypes = {
  productInfo: PropTypes.object,
  statusToken: PropTypes.bool,
  cartList: PropTypes.array,
  commentList: PropTypes.array,
  openCart: PropTypes.func,
  handleChangeCart: PropTypes.func,
  handleLikeProduct: PropTypes.func,
};

DetailInfo.DefaultPropTypes = {
  productInfo: {},
  statusToken: false,
  cartList: [],
  commentList: [],
  openCart: null,
  handleChangeCart: null,
  handleLikeProduct: null,
};

function DetailInfo(props) {
  const {
    productInfo,
    statusToken,
    cartList,
    commentList,
    openCart,
    handleChangeCart,
    handleLikeProduct,
  } = props;
  const { product, brand, indexImage, addtionalImages } = productInfo;
  const [rate, setRate] = useState(0);
  const [countDone, setCountDone] = useState(false);

  // tổng số rate start sản phẩm
  useEffect(() => {
    const fetchTotalRate = async () => {
      if (commentList.length > 0) {
        const newTotalRate = await commentList.reduce(
          (total, item) => Number(total) + Number(item.rate),
          0
        );
        setRate(newTotalRate / 6);
      }
      setCountDone(true);
    };
    fetchTotalRate();
  }, []);

  /**
   * kiểm tra sản phẩm trong giỏ hàng
   * không có thì thêm vào giỏ hàng
   * có thì tăng số lượng lên một
   */
  function handleCheckProductExist(product) {
    const item = cartList.filter((item) => item.product.id === product.id);
    if (item.length > 0) {
      updateProduct(item[0]);
    } else {
      addProduct(product);
    }
  }

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
                handleChangeCart();
                openCart();
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

  // cập nhất số lượng sản phẩm
  function updateProduct(product) {
    try {
      cartApi
        .updateProduct(product.cartDetailID, product.quantity + 1)
        .then(function (response) {
          if (response.status === 200) {
            Swal.fire({
              title: "THÔNG BÁO",
              text: "CẬP NHẬT SỐ LƯỢNG SẢN PHẨM THÀNH CÔNG",
              icon: "success",
              showConfirmButton: true,
            }).then((result) => {
              if (result.isConfirmed) {
                handleChangeCart();
                openCart();
              }
            });
          } else {
            Swal.fire({
              title: "THÔNG BÁO",
              text: "CÓ LỖI XẢY RA! VUI LÒNG THỬ LẠI",
              icon: "error",
              showConfirmButton: true,
            });
          }
        });
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "CÓ LỖI XẢY RA! VUI LÒNG THỬ LẠI",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }

  // yêu thích sản phẩm
  function likeProduct(id) {
    if (statusToken) {
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
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "BẠN PHẢI ĐĂNG NHẬP ĐỂ THỰC HIỆN CHỨC NĂNG NÀY",
        icon: "warning",
        showConfirmButton: true,
      }).then((result) => {
        if (result.isConfirmed) {
          window.location.replace("/dangnhap");
        }
      });
    }
  }

  return (
    <>
      {countDone && (
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
                <div className="product__rate">
                  <span className="product__title">Đánh giá:</span>
                  <span>
                    <ReactStars
                      size={15}
                      count={5}
                      value={rate}
                      edit={false}
                      isHalf={true}
                    />
                  </span>
                </div>
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
                    onClick={() => handleCheckProductExist(product)}
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
      )}
    </>
  );
}

export default DetailInfo;
