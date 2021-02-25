import {
  BrowserRouter as Router,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";
import productData from "../../api/productApi";
import BannerBrand from "./banner/banner-brand";
import BannerGender from "./banner/banner-gender";
import "./css/product.css";
import NavBar from "./navbar/navbar";
import ProductBestSeller from "./product-bestSeller/best-seller";
import ProductCategory from "./product-category/category";
import ProductDetail from "./product-detail/detail";
import ProductGender from "./product-gender/gender";
Product.propTypes = {};

function Product(props) {
  const { url } = useRouteMatch();
  const data = productData;

  return (
    <Router>
      <div className="product">
        <div className="product__bannner">
          <Router>
            <Switch>
              <Route url={`${url}/gioitinh/:gender`}>
                <BannerGender />
              </Route>
              <Route url={`${url}/gioitinh/:brand`}>
                <BannerBrand />
              </Route>
            </Switch>
          </Router>
        </div>
        <div className="product__main">
          <div className="product__filter">
            <div className="navbar__filter">
              <NavBar />
            </div>
          </div>
          <div className="product__list">
            <Switch>
              <Route url={`${url}/gioitinh/:gender`}>
                <ProductGender data={data} />
              </Route>
              <Route url={`${url}/thuonghieu/:brand`}>
                <ProductCategory />
              </Route>
              <Route url={`${url}/banchay`}>
                <ProductBestSeller />
              </Route>
              <Route url={`${url}/sanphamchitiet/:id`}>
                <ProductDetail />
              </Route>
            </Switch>
          </div>
        </div>
      </div>
    </Router>
  );
}

export default Product;
