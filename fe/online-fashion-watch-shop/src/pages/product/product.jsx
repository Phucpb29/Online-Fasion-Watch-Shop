/* eslint-disable no-const-assign */
import React, { useEffect, useState } from "react";
import { useLocation } from "react-router-dom";
import productApi from "../../api/productApi";
import LoadingOverplay from "../../components/loading/loading";
import Banner from "./components/product-banner/product-banner";
import ProductError from "./components/product-error/product-error";
import ProductList from "./components/product-list/product-list";
import Pagination from "./components/product-pagination/product-pagination";
import SideBar from "./components/product-sidebar/product-sidebar";
import Sort from "./components/product-sort/product-sort";
import "./css/product.css";

function Product() {
  // lấy đường dẫn giới tính
  const { pathname } = useLocation();
  const value = pathname.slice(pathname.lastIndexOf("/") + 1);
  const gender = value === "nam" ? "male" : "female";
  //bộ lọc
  const [size, setSize] = useState(16);
  const [page, setPage] = useState(0);
  const [count, setCount] = useState(0);
  const [min, setMin] = useState(0);
  const [max, setMax] = useState(50000000);
  const [cords, setCords] = useState({});
  const [brands, setBrands] = useState({});
  const [sort, setSort] = useState("ASC");
  const [propertyList, setPropertyList] = useState([]);
  const [productList, setProductList] = useState([]);
  const [loading, setLoading] = useState(true);
  const [isChange, setIsChange] = useState(false);
  const [changeProductList, setChangeProductList] = useState(false);

  useEffect(() => {
    const fecthData = async () => {
      // fetch filter data
      const responseBrands = await productApi.getPropertyRoot();
      setBrands(responseBrands.data[12]);
      setCords(responseBrands.data[8]);

      // fetch product data
      let responseProductList = [];
      let responseProductPage = 0;
      // list product without filter
      if (min <= 0 && propertyList.length <= 0) {
        responseProductList = await productApi.getProduct(
          gender,
          page,
          size,
          sort
        );
        responseProductPage = await productApi.getCountPageProduct(
          gender,
          size
        );
      }
      // list product filter property
      if (min <= 0 && propertyList.length > 0) {
        responseProductList = await productApi.getProductFilterByProperty(
          gender,
          page,
          size,
          sort,
          propertyList
        );
        responseProductPage = await productApi.getCountPageProductByProperty(
          gender,
          size,
          propertyList
        );
      }
      // list product filter price
      if (min > 0 && propertyList.length <= 0) {
        responseProductList = await productApi.getProductFilterByPrice(
          gender,
          page,
          size,
          sort,
          min,
          max
        );
        responseProductPage = await productApi.getCountPageProductByPrice(
          gender,
          size,
          min,
          max
        );
      }
      // list product filter all
      if (min > 0 && propertyList.length > 0) {
        responseProductList = await productApi.getProductFilterAll(
          gender,
          page,
          size,
          sort,
          min,
          max,
          propertyList
        );
        responseProductPage = await productApi.getCountPageProductFilterAll(
          gender,
          size,
          min,
          max,
          propertyList
        );
      }
      window.scrollTo({ top: 0, left: 0, behavior: "smooth" });
      setProductList(responseProductList.data);
      setCount(responseProductPage.data);
      setChangeProductList(false);
      setLoading(false);
    };
    fecthData();
  }, [gender, page, size, sort, min, max, propertyList, isChange]);

  // chuyển về page đầu
  function handleChangeFirstPage() {
    setPage(0);
    setChangeProductList(true);
    setIsChange(!isChange);
  }

  // chuyển tới page cuối
  function handleChangeLastPage() {
    setPage(count);
    setChangeProductList(true);
    setIsChange(!isChange);
  }

  // thay đổi page
  function handleChangePage(page) {
    setPage(page);
    setChangeProductList(true);
    setIsChange(!isChange);
  }

  // thay đổi selection
  function handleChangeSort(value) {
    setSort(value);
    setChangeProductList(true);
    setIsChange(!isChange);
  }

  // checkbox thương hiệu
  function handleCheckValue(value, checked) {
    /**
     * Kiểm tra checked
     * Bằng true thì thêm vào list
     * Bằng false thì cắt ra khỏi list
     */
    if (checked) {
      const newList = [...propertyList, value];
      setPropertyList(newList);
    } else {
      const newList = [...propertyList];
      const index = propertyList.lastIndexOf(value);
      newList.splice(index, 1);
      setPropertyList(newList);
    }
    setPage(0);
    setChangeProductList(true);
    setIsChange(!isChange);
  }

  // thay đổi giá sản phẩm
  function handleChangePrice(value) {
    setMin(value);
    setPage(0);
    setChangeProductList(true);
    setIsChange(!isChange);
  }

  // xoá filter
  function handleClearAllFilter() {
    window.location.replace(pathname);
  }

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="product">
          <Banner gender={gender} />
          <div className="product__main">
            <div className="product__filter">
              <SideBar
                brands={brands}
                cords={cords}
                handleCheckValue={handleCheckValue}
                handleChangePrice={handleChangePrice}
              />
            </div>
            <div className="product__list">
              <Sort
                productList={productList}
                handleChangeSort={handleChangeSort}
              />
              {productList.length <= 0 ? (
                <ProductError handleClearAllFilter={handleClearAllFilter} />
              ) : (
                <>
                  <ProductList
                    productList={productList}
                    changeProductList={changeProductList}
                  />
                  <>
                    {count > 1 && (
                      <Pagination
                        count={count}
                        handleChangeFirstPage={handleChangeFirstPage}
                        handleChangePage={handleChangePage}
                        handleChangeLastPage={handleChangeLastPage}
                      />
                    )}
                  </>
                </>
              )}
            </div>
          </div>
        </div>
      )}
    </>
  );
}

export default Product;
