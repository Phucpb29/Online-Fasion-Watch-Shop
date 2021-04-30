import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import Swal from "sweetalert2";
import wishlistApi from "../../api/wishlistApi";
import Error from "../../components/error/error";
import LoadingOverplay from "../../components/loading/loading";
import "./css/wishlist.css";

WishList.prototype = {
  statusToken: PropTypes.bool,
  wishChange: PropTypes.bool,
  handleChangeWishList: PropTypes.func,
};

WishList.DefaultPropTypes = {
  statusToken: false,
  wishChange: false,
  handleChangeWishList: null,
};

function WishList(props) {
  const { statusToken, wishChange, handleChangeWishList } = props;
  const [wishList, setWishList] = useState([]);
  const [loading, setLoading] = useState(true);

  // lấy danh sách sản phẩm yêu thích khi đăng nhập hoặc khi thay đổi danh sách
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await wishlistApi.getAll();
        setWishList(response.data);
      }
      setLoading(false);
    };
    fetchData();
  }, [statusToken, wishChange]);

  // unlike sản phẩm
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
          wishlistApi.unLike(id).then(function (response) {
            if (response.status === 200) {
              Swal.fire({
                title: "THÔNG BÁO",
                text: response.data,
                icon: "success",
                showConfirmButton: true,
              }).then((result) => {
                if (result.isConfirmed) {
                  handleChangeWishList();
                }
              });
            }
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
      {loading ? (
        <LoadingOverplay />
      ) : (
        <>
          {statusToken ? (
            <div className="wishlist__body">
              <div className="wishlist__banner">
                <div className="wishlist__overplay"></div>
                <div className="wishlist__title">
                  <span>SẢN PHẨM YÊU THÍCH CỦA BẠN</span>
                </div>
              </div>
              <div className="wishlist__body-box">
                <>
                  {wishList !== null && (
                    <>
                      {wishList.length <= 0 ? (
                        <Error text={"BẠN CHƯA CÓ SẢN PHẨM YÊU THÍCH"} />
                      ) : (
                        <>
                          <div className="wishlist__list">
                            <ul className="wishlist__list-item">
                              {wishList.map((item, index) => (
                                <li className="item__wishlist" key={index}>
                                  <div className="item__unwishlist">
                                    <button
                                      className="item__unwishlist-button"
                                      onClick={() =>
                                        unlikeProduct(item.wishlist_product.id)
                                      }
                                    >
                                      <box-icon
                                        name="heart"
                                        type="solid"
                                        color="#ffffff"
                                      ></box-icon>
                                    </button>
                                  </div>
                                  <div className="item__wishlist-detail">
                                    <div className="item__img">
                                      <img src={item.indexImage} alt="" />
                                    </div>
                                    <div className="item__name">
                                      <span>
                                        {item.wishlist_product.product.name}
                                      </span>
                                    </div>
                                    <div className="item__price">
                                      <span>
                                        {new Intl.NumberFormat("vi-VN", {
                                          style: "currency",
                                          currency: "VND",
                                        }).format(
                                          item.wishlist_product.product.price
                                        )}
                                      </span>
                                    </div>
                                    <div className="item__button">
                                      <a
                                        href={`/san-pham-chi-tiet/${item.wishlist_product.product.id}`}
                                        className="button__more-detail"
                                      >
                                        XEM SẢN PHẨM
                                      </a>
                                    </div>
                                  </div>
                                </li>
                              ))}
                            </ul>
                          </div>
                        </>
                      )}
                    </>
                  )}
                </>
              </div>
            </div>
          ) : (
            <Error text={"BẠN CHƯA ĐĂNG NHẬP. VUI LÒNG ĐĂNG NHẬP"} />
          )}
        </>
      )}
    </>
  );
}

export default WishList;
