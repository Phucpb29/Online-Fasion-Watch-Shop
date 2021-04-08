import "boxicons";
import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import About from "./components/about";
import "./css/home.css";
import FemaleBestSeller from "./components/female-bestSeller";
import MaleBestSeller from "./components/male-bestSeller";
import productApi from "../../api/productApi";
import LoadingOverplay from "../../components/loading/loading";
import PropTypes from "prop-types";

Home.prototype = {
  handleAddWishlist: PropTypes.func,
};

Home.DefaultPropTypes = {
  handleAddWishlist: null,
};

function Home(props) {
  const { handleAddWishlist } = props;
  const [listProductMale, setListProductMale] = useState([]);
  const [listProductFemale, setListProductFemale] = useState([]);
  const [loading, setLoading] = useState(false);

  // lấy data sản phẩm bán chạy nam và nữ
  useEffect(() => {
    const fetchData = async () => {
      const responseBSMale = await productApi.getBestSellerMale(); // lấy 4 sản phẩm bán chạy của nam
      const responseBSFemale = await productApi.getBestSellerFemale(); // lấy 4 sản phẩm bán chạy của nữ
      setListProductMale(responseBSMale.data);
      setListProductFemale(responseBSFemale.data);
      setLoading(false);
    };
    fetchData();
    return () => {
      fetchData();
    };
  }, []);

  // yêu thích sản phẩm
  function handleClickLike(id) {
    if (handleAddWishlist) {
      handleAddWishlist(id);
    }
  }

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="main__home">
          <div className="home__banner">
            <h2 className="banner__title">Rolex</h2>
            <p className="banner__content">A crown for every achievement</p>
            <div className="banner__link">
              <Link to="" className="link__product">
                <span>MUA NGAY</span>
              </Link>
            </div>
          </div>
          <div className="home__shop">
            <div className="shop__link shop__man">
              <p className="link__title">ĐỒNG HỒ NAM</p>
              <Link to="/sanpham/gioitinh/nam" className="link__product">
                <span>MUA NGAY</span>
                <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
              </Link>
            </div>
            <div className="shop__link shop__woman">
              <p className="link__title">ĐỒNG HỒ NỮ</p>
              <Link to="/sanpham/gioitinh/nu" className="link__product">
                <span>MUA NGAY</span>
                <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
              </Link>
            </div>
          </div>
          <MaleBestSeller
            productList={listProductMale}
            handleClickLike={handleClickLike}
          />
          <FemaleBestSeller
            productList={listProductFemale}
            handleClickLike={handleClickLike}
          />
          <About />
        </div>
      )}
    </>
  );
}

export default Home;
