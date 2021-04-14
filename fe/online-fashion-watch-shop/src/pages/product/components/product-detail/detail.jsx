import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import commentApi from "../../../../api/commentApi";
import productApi from "../../../../api/productApi";
import LoadingOverplay from "../../../../components/loading/loading";
import DetailComment from "./detail-comment";
import DetailInfo from "./detail-info";
import DetailProperty from "./detail-property";
import "./css/detail.css";
import wishlistApi from "../../../../api/wishlistApi";
import cartApi from "../../../../api/cartApi";

ProductDetail.prototype = {
  id: PropTypes.string,
  statusToken: PropTypes.bool,
  cartChange: PropTypes.bool,
  handleOpenCart: PropTypes.func,
  changeCart: PropTypes.func,
  likeProduct: PropTypes.func,
};

ProductDetail.DefaultPropTypes = {
  id: "",
  statusToken: false,
  cartChange: false,
  handleOpenCart: null,
  changeCart: null,
  likeProduct: null,
};

function ProductDetail(props) {
  const {
    id,
    statusToken,
    cartChange,
    handleOpenCart,
    changeCart,
    likeProduct,
  } = props;
  const size = 6;
  const [page, setPage] = useState(0);
  const [loading, setLoading] = useState(true);
  const [productInfo, setProductInfo] = useState({}); // thông tin sản phẩm
  const [propertyDetailList, setPropertyDetailList] = useState([]); // thông tin thuộc tính sản phẩm
  const [commentList, setCommentList] = useState([]); // danh sách đánh giá sản phẩm
  const [countComment, setCountComment] = useState(0); // tổng số đánh giá sản phẩm
  const [cartList, setCartList] = useState([]); // danh sách giỏ hàng

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

  // danh sách giỏ hàng
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await cartApi.viewCart();
        const data = response.data;
        setCartList(data);
      }
    };
    fetchData();
  }, [statusToken, cartChange]);

  // mở giỏ hàng
  function openCart() {
    if (handleOpenCart) {
      handleOpenCart();
    }
  }

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

  // thay đổi giỏ hàng
  function handleChangeCart() {
    if (changeCart) {
      changeCart();
    }
  }

  // yêu thích sản phẩm
  function handleLikeProduct() {
    if (likeProduct) {
      likeProduct();
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
            cartList={cartList}
            commentList={commentList}
            openCart={openCart}
            handleChangeCart={handleChangeCart}
            handleLikeProduct={handleLikeProduct}
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
