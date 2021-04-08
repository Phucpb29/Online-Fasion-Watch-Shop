import React, { useState } from "react";
import "./css/wishlist.css";
import movado from "../../assets/image/movado.jpg";
import PropTypes from "prop-types";
import LoadingOverplay from "../../components/loading/loading";

WishList.prototype = {
  wishList: PropTypes.array,
};

WishList.DefaultPropTypes = {
  wishList: [],
};

function WishList(props) {
  const { wishList } = props;
  const [loading, setLoading] = useState(true);

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="wishlist__body">
          <div className="wishlist__banner">
            <div className="wishlist__overplay"></div>
            <div className="wishlist__title">
              <h3>SẢN PHẨM YÊU THÍCH CỦA BẠN</h3>
            </div>
          </div>
          <div className="wishlist__body-box">
            {wishList.length <= 0 ? (
              <div className="wishlist__error">
                <div className="wishlist__error-box">
                  <div className="wishlist__title">
                    <p>BẠN CHƯA CÓ SẢN PHẨM YÊU THÍCH</p>
                  </div>
                  <div className="wishlist__back">
                    <a href="/" className="link__back">
                      <span>QUAY TRỞ LẠI TRANG CHỦ</span>
                    </a>
                  </div>
                </div>
              </div>
            ) : (
              <>
                <div className="wishlist__unlike"></div>
                <div className="wishlist__list">
                  <ul className="wishlist__list-item">
                    <li className="item__wishlist">
                      <div className="item__unwishlist">
                        <button className="item__unwishlist-button">
                          <box-icon
                            name="heart"
                            type="solid"
                            color="#ffffff"
                          ></box-icon>
                        </button>
                      </div>
                      <div className="item__wishlist-detail">
                        <div className="item__img">
                          <img src={movado} alt="" />
                        </div>
                        <div className="item__name">
                          <span>MOVADO</span>
                        </div>
                        <div className="item__price">
                          <span>3.000.000.000 đ</span>
                        </div>
                        <div className="item__button">
                          <a href="/" className="button__more-detail">
                            XEM SẢN PHẨM
                          </a>
                        </div>
                      </div>
                    </li>
                    <li className="item__wishlist">
                      <div className="item__unwishlist">
                        <button className="item__unwishlist-button">
                          <box-icon
                            name="heart"
                            type="solid"
                            color="#ffffff"
                          ></box-icon>
                        </button>
                      </div>
                      <div className="item__wishlist-detail">
                        <div className="item__img">
                          <img src={movado} alt="" />
                        </div>
                        <div className="item__name">
                          <span>MOVADO</span>
                        </div>
                        <div className="item__price">
                          <span>3.000.000.000 đ</span>
                        </div>
                        <div className="item__button">
                          <a href="/" className="button__more-detail">
                            XEM SẢN PHẨM
                          </a>
                        </div>
                      </div>
                    </li>
                    <li className="item__wishlist">
                      <div className="item__unwishlist">
                        <button className="item__unwishlist-button">
                          <box-icon
                            name="heart"
                            type="solid"
                            color="#ffffff"
                          ></box-icon>
                        </button>
                      </div>
                      <div className="item__wishlist-detail">
                        <div className="item__img">
                          <img src={movado} alt="" />
                        </div>
                        <div className="item__name">
                          <span>MOVADO</span>
                        </div>
                        <div className="item__price">
                          <span>3.000.000.000 đ</span>
                        </div>
                        <div className="item__button">
                          <a href="/" className="button__more-detail">
                            XEM SẢN PHẨM
                          </a>
                        </div>
                      </div>
                    </li>
                    <li className="item__wishlist">
                      <div className="item__unwishlist">
                        <button className="item__unwishlist-button">
                          <box-icon
                            name="heart"
                            type="solid"
                            color="#ffffff"
                          ></box-icon>
                        </button>
                      </div>
                      <div className="item__wishlist-detail">
                        <div className="item__img">
                          <img src={movado} alt="" />
                        </div>
                        <div className="item__name">
                          <span>MOVADO</span>
                        </div>
                        <div className="item__price">
                          <span>3.000.000.000 đ</span>
                        </div>
                        <div className="item__button">
                          <a href="/" className="button__more-detail">
                            XEM SẢN PHẨM
                          </a>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
                <div className="wishlist__pagination"></div>
              </>
            )}
          </div>
        </div>
      )}
    </>
  );
}

export default WishList;
