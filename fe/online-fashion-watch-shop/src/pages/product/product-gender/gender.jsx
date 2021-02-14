import React from "react";
import banner from "../../../assets/image/watch-for-men.jpg";
import movado from "../../../assets/image/movado.jpg";
import "./css/gender.css";

function ProductGender() {
  return (
    <div className="main__gender">
      <div className="main__gender-banner">
        <img src={banner} alt="" />
        <div className="banner__title">
          <span>Đồng hồ dành cho nam</span>
        </div>
      </div>
      <div className="main__gender-body">
        <div className="product__filter">
          <div className="filter__brand">
            <p>Thương hiệu</p>
            <ul className="brand__list">
              <li className="brand__list-item">
                <input type="checkbox" />
                <span>Tên thương hiệu</span>
              </li>
              <li className="brand__list-item">
                <input type="checkbox" />
                <span>Tên thương hiệu</span>
              </li>
              <li className="brand__list-item">
                <input type="checkbox" />
                <span>Tên thương hiệu</span>
              </li>
              <li className="brand__list-item">
                <input type="checkbox" />
                <span>Tên thương hiệu</span>
              </li>
            </ul>
          </div>
          <div className="filter__gender">
            <p>Giới tính</p>
            <ul className="gender__list">
              <li className="gender__list-item">
                <input type="checkbox" />
                <span>Nam</span>
              </li>
              <li className="gender__list-item">
                <input type="checkbox" />
                <span>Nữ</span>
              </li>
            </ul>
          </div>
          <div className="filter__price">
            <p>Giá</p>
            <div className="price__list">
              <div className="price__list-item">
                <p className="price__min">0 </p>
                <p className="price__max">0</p>
              </div>
              <input min="0" max="50000" step="1" type="range" />
            </div>
          </div>
        </div>
        <div className="product__item">
          <div className="product__header">
            <div className="product__amout">
              <span>8 sản phẩm</span>
            </div>
            <div className="product__sort">
              <select name="" id="">
                <option value="">Sắp xếp</option>
                <option value="">A - Z</option>
                <option value="">Z - A</option>
                <option value="">Giá tăng</option>
                <option value="">Giá giảm</option>
              </select>
            </div>
          </div>
          <div className="product__main">
            <ul className="product__list">
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
              <li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li><li className="product__list-item">
                <div className="product__detail">
                  <div className="product__img">
                    <img src={movado} alt=""/>
                  </div>
                  <div className="product__name">
                    <h3>MOVADO</h3>
                  </div>
                  <div className="product__price">
                    <span>3000000 đ</span>
                  </div>
                  <div className="product__button">
                    <a href="" className="product__button-link">
                      <span>XEM SẢN PHẨM</span>
                    </a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <div className="product__footer"></div>
        </div>
      </div>
      <div className="main__gender-footer"></div>
    </div>
  );
}

export default ProductGender;
