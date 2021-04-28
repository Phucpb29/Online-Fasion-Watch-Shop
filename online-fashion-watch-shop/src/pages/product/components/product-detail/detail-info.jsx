import "boxicons";
import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import { Rabbit as Button } from "react-button-loaders";
import ReactStars from "react-rating-stars-component";
import Swal from "sweetalert2";
import cartApi from "../../../../api/cartApi";
import wishlistApi from "../../../../api/wishlistApi";
import ReactImageZoom from "react-image-zoom";

DetailInfo.propTypes = {
  productInfo: PropTypes.object,
  statusToken: PropTypes.bool,
  wishList: PropTypes.array,
  commentList: PropTypes.array,
  handleAddItem: PropTypes.func,
  handleChangeWishList: PropTypes.func,
};

DetailInfo.DefaultPropTypes = {
  productInfo: {},
  statusToken: false,
  wishList: [],
  commentList: [],
  handleAddItem: null,
  handleChangeWishList: null,
};

function DetailInfo(props) {
  const {
    productInfo,
    statusToken,
    wishList,
    commentList,
    handleAddItem,
    handleChangeWishList,
  } = props;
  const { product, brand, indexImage, addtionalImages } = productInfo;
  const [rate, setRate] = useState(0);
  const [isLike, setIsLike] = useState(false);
  const [countDone, setCountDone] = useState(false);
  const [addLoading, setAddLoading] = useState("");
  const [wishLoading, setWishLoading] = useState("");

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

  // kiểm tra sản phẩm đã có trong danh sách yêu thích chưa
  useEffect(() => {
    const checkExist = async () => {
      const item = wishList.filter(
        (item) => item.wishlist_product.product.id === product.id
      );
      if (item.length > 0) {
        setIsLike(true);
      }
    };
    checkExist();
  }, []);

  //  thêm sản phẩm vào giỏ hàng
  async function addItem(item) {
    setAddLoading("loading");
    if (statusToken && statusToken === true) {
      const { product } = item;
      let price = 0;
      if (product.issale) {
        price = product.price_sale;
      } else {
        price = product.price;
      }
      await cartApi.insertProduct({
        product_id: product.id,
        total: price * 1,
        quantity: 1,
        product_price: price,
      });
    }
    if (handleAddItem) {
      handleAddItem(item);
    }
    setAddLoading("");
  }

  /**
   * kiểm tra sản phẩm trong danh sách yêu thích
   * không có thì cho thích sản phẩm
   * có thì cho bỏ thích sản phẩm
   */
  function likeOrUnlike(id) {
    const item = wishList.filter(
      (item) => item.wishlist_product.product.id === id
    );
    if (isLike) {
      unlikeProduct(item[0].wishlist_product.id);
    } else {
      likeProduct(id);
    }
  }

  // yêu thích sản phẩm
  function likeProduct(id) {
    if (statusToken) {
      setWishLoading("loading");
      try {
        wishlistApi.like(id).then(function (response) {
          if (response.status === 200) {
            setWishLoading("");
            Swal.fire({
              title: "THÔNG BÁO",
              text: response.data,
              icon: "success",
              showConfirmButton: true,
            }).then((result) => {
              if (result.isConfirmed) {
                setIsLike(true);
                handleChangeWishList();
              }
            });
          }
        });
      } catch (error) {
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
          window.location.replace("/dang-nhap");
        }
      });
    }
  }

  // bỏ yêu thích sản phẩm
  function unlikeProduct(id) {
    try {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "BẠN CÓ MUỐN BỎ THÍCH SẢN PHẨM",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "BỎ THÍCH",
      }).then((confirm) => {
        if (confirm.isConfirmed) {
          setWishLoading("loading");
          wishlistApi.unLike(id).then(function (response) {
            setWishLoading("");
            if (response.status === 200) {
              Swal.fire({
                title: "THÔNG BÁO",
                text: response.data,
                icon: "success",
                showConfirmButton: true,
              }).then((result) => {
                if (result.isConfirmed) {
                  setIsLike(false);
                  handleChangeWishList();
                }
              });
            }
          });
        }
      });
    } catch (error) {
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
      {countDone && (
        <>
          <div className="product__detail">
            <div className="product__img">
              <div className="img__main">
                <ReactImageZoom
                  img={indexImage}
                  width={500}
                  height={400}
                  zoomWidth={300}
                />
                {/* <img src={indexImage} alt="" /> */}
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
                {product.issale ? (
                  <div className="product__price product__price-sale">
                    <span className="product__title">Giá sản phẩm:</span>
                    <span className="price">
                      {new Intl.NumberFormat("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      }).format(product.price)}
                    </span>
                    <span className="price__sale">
                      {new Intl.NumberFormat("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      }).format(product.price_sale)}
                    </span>
                  </div>
                ) : (
                  <div className="product__price">
                    <span className="product__title">Giá sản phẩm:</span>
                    <span className="product__price">
                      {new Intl.NumberFormat("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      }).format(product.price)}
                    </span>
                  </div>
                )}
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
                <Button
                  className={
                    isLike
                      ? "product__button-like-unlike product__unlike"
                      : "product__button-like-unlike product__like"
                  }
                  state={wishLoading}
                  onClick={() => likeOrUnlike(product.id)}
                >
                  <span className="icon__like">
                    <box-icon name="heart" type="solid"></box-icon>
                  </span>
                  <span className="icon__unlike">
                    <box-icon
                      name="heart"
                      type="solid"
                      color="#ffffff"
                    ></box-icon>
                  </span>
                </Button>
                {product.quantity > 0 && (
                  <Button
                    className="product__button product__add"
                    state={addLoading}
                    bgLoading="#000"
                    onClick={() => addItem({ product, indexImage })}
                  >
                    <span>THÊM VÀO GIỎ HÀNG</span>
                  </Button>
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
