import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import commentApi from "../../../../api/commentApi";
import productApi from "../../../../api/productApi";
import wishlistApi from "../../../../api/wishlistApi";
import LoadingOverplay from "../../../../components/loading/loading";
import "./css/detail.css";
import DetailComment from "./detail-comment";
import DetailInfo from "./detail-info";
import DetailProperty from "./detail-property";

ProductDetail.prototype = {
  id: PropTypes.string,
  cart: PropTypes.array,
  statusToken: PropTypes.bool,
  wishChange: PropTypes.bool,
  addItem: PropTypes.func,
  changeWishList: PropTypes.func,
};

ProductDetail.DefaultPropTypes = {
  id: "",
  cart: [],
  statusToken: false,
  wishChange: false,
  addItem: null,
  changeWishList: null,
};

function ProductDetail(props) {
  const { id, cart, statusToken, wishChange, addItem, changeWishList } = props;
  const size = 6;
  const [page, setPage] = useState(0);
  const [loading, setLoading] = useState(true);
  const [productInfo, setProductInfo] = useState({}); // thông tin sản phẩm
  const [propertyDetailList, setPropertyDetailList] = useState([]); // thông tin thuộc tính sản phẩm
  const [commentList, setCommentList] = useState([]); // danh sách đánh giá sản phẩm
  const [countComment, setCountComment] = useState(0); // tổng số đánh giá sản phẩm
  const [wishList, setWishList] = useState([]); // danh sách sản phẩm yêu thích

  // thông tin chi tiết sản phẩm
  useEffect(() => {
    const fecthProductDetailData = async () => {
      const productDetail = await productApi.getProductDetailById(id);
      const productProperties = await productApi.getPropertyRootById(id);
      const countCommentProduct = await commentApi.getCountCommentByProductId(
        size,
        id
      );
      const productCommentList = await commentApi.getCommentByProductId(
        page,
        size,
        id
      );

      setProductInfo(productDetail.data);
      setPropertyDetailList(productProperties.data);
      setCommentList(productCommentList.data);
      setCountComment(countCommentProduct.data);
      setLoading(false);
    };
    fecthProductDetailData();
    return () => {
      fecthProductDetailData();
    };
  }, [id, loading, page, size]);

  // danh sách sản phẩm yêu thích
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await wishlistApi.getAll();
        const data = response.data;
        setWishList(data);
      }
    };
    fetchData();
  }, [statusToken, wishChange]);

  // thay đổi page
  function handleChangePage(page) {
    setPage(page);
  }

  // về page đầu
  function handleFirstPage() {
    setPage(0);
  }

  // tới page cuối
  function handleLastPage() {
    setPage(countComment);
  }

  // yêu thích sản phẩm
  function handleChangeWishList() {
    if (changeWishList) {
      changeWishList();
    }
  }

  function handleAddItem(item) {
    if (addItem) {
      addItem(item);
    }
  }

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="main__product">
          <DetailInfo
            productInfo={productInfo}
            statusToken={statusToken}
            cart={cart}
            wishList={wishList}
            commentList={commentList}
            handleAddItem={handleAddItem}
            handleChangeWishList={handleChangeWishList}
          />
          <DetailProperty propertyList={propertyDetailList} />
          <DetailComment
            countComment={countComment}
            commentList={commentList}
            page={page}
            handleFirstPage={handleFirstPage}
            handleChangePage={handleChangePage}
            handleLastPage={handleLastPage}
          />
        </div>
      )}
    </>
  );
}

export default ProductDetail;
