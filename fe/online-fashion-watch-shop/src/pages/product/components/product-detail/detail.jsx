import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import commentApi from "../../../../api/commentApi";
import productApi from "../../../../api/productApi";
import LoadingOverplay from "../../../../components/loading/loading";
import DetailComment from "./detail-comment";
import DetailInfo from "./detail-info";
import DetailProperty from "./detail-property";
import "./css/detail.css";

ProductDetail.prototype = {
  id: PropTypes.string,
  addProduct: PropTypes.func,
};

ProductDetail.DefaultPropTypes = {
  id: "",
  addProduct: null,
};

function ProductDetail(props) {
  const { id, addProduct } = props;
  const size = 6;
  const [page, setPage] = useState(0);
  const [loading, setLoading] = useState(true);
  const [dataProduct, setDataProduct] = useState({}); // thông tin sản phẩm
  const [propertyDetailList, setPropertyDetailList] = useState([]); // thông tin thuộc tính sản phẩm
  const [commentList, setCommentList] = useState([]); // danh sách đánh giá sản phẩm
  const [countComment, setCountComment] = useState(0); // tổng số đánh giá sản phẩm

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

      setDataProduct(productDetail.data);
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

  // thêm sản phẩm
  function handleAddProduct() {
    if (addProduct) {
      addProduct();
    }
  }

  return (
    <>
      {loading ? (
        <LoadingOverplay />
      ) : (
        <div className="main__product">
          <DetailInfo
            product={dataProduct.product}
            brand={dataProduct.brand}
            indexImage={dataProduct.indexImage}
            addtionalImages={dataProduct.addtionalImages}
            handleAddProduct={handleAddProduct}
          />
          <DetailProperty propertyList={propertyDetailList} />
          <DetailComment
            countComment={countComment}
            commentList={commentList}
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