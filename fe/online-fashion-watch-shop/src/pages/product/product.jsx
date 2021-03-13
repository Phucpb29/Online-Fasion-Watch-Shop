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
import GenderMale from "./product-gender/gender-male";
import GenderFemale from "./product-gender/gender-female";
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
              <Route url="/gioitinh/nam">
                <BannerGender />
              </Route>
              <Route url="/gioitinh/nu">
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
              <Route exact url={`${url}/gioitinh/nam`}>
                <GenderMale />
              </Route>
              <Route exact url={`${url}/gioitinh/nu`}>
                <GenderFemale />
              </Route>
              <Route exact url={`${url}/thuonghieu/:brand`}>
                <ProductCategory />
              </Route>
              <Route exact url={`${url}/banchay`}>
                <ProductBestSeller />
              </Route>
            </Switch>
          </div>
        </div>
      </div>
    </Router>
  );
}

export default Product;
