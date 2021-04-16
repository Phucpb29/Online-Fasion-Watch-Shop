import "boxicons";
import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import Swal from "sweetalert2";
import productApi from "../../api/productApi";
import wishlistApi from "../../api/wishlistApi";
import LoadingOverplay from "../../components/loading/loading";
import About from "./components/about";
import FemaleBestSeller from "./components/female-bestSeller";
import MaleBestSeller from "./components/male-bestSeller";
import "./css/home.css";

function Home() {
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
              <Link to="/san-pham/gioi-tinh/nam" className="link__product">
                <span>MUA NGAY</span>
                <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
              </Link>
            </div>
            <div className="shop__link shop__woman">
              <p className="link__title">ĐỒNG HỒ NỮ</p>
              <Link to="/san-pham/gioi-tinh/nu" className="link__product">
                <span>MUA NGAY</span>
                <box-icon name="right-arrow-alt" color="#ffffff"></box-icon>
              </Link>
            </div>
          </div>
          <MaleBestSeller productList={listProductMale} />
          <FemaleBestSeller productList={listProductFemale} />
          <About />
        </div>
      )}
    </>
  );
}

export default Home;
