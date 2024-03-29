import React, { useEffect, useState } from "react";
import {
  BrowserRouter as Router,
  Redirect,
  Route,
  Switch,
} from "react-router-dom";
import Swal from "sweetalert2";
import cartApi from "./api/cartApi";
import wishlistApi from "./api/wishlistApi";
import CartModal from "./components/cart/cart";
import Error from "./components/error/error";
import Footer from "./components/footer/footer";
import Header from "./components/header/header";
import OverPlay from "./components/overplay/overplay";
import ScrollToTop from "./components/scroll/scroll";
import Account from "./pages/account/account";
import Forgotpass from "./pages/forgotpass/forgotpass";
import Home from "./pages/home/home";
import WrapLogin from "./pages/login/wrap-login";
import Maxacnhan from "./pages/maxacnhan/maxacnhan";
import Order from "./pages/order/order";
import WrapProductDetai from "./pages/product/components/product-detail/wrap-productdetail";
import WrapProductSearch from "./pages/product/components/product-search/wrap-productsearch";
import Product from "./pages/product/product";
import WrapRegister from "./pages/register/wrap-register";
import Resetpass from "./pages/resetpass/resetpass";
import WishList from "./pages/wishlist/wishlist";

function App() {
  const [cart, setCart] = useState([]); // giỏ hàng database
  const [statusCart, setStatusCart] = useState(false);
  const [cartSize, setCartSize] = useState(0);
  const [loading, setLoading] = useState(true);

  // danh sách yêu thích
  const [wishList, setWishList] = useState([]);
  const [wishChange, setWishChange] = useState(false);
  const [wishListSize, setWishListSize] = useState(0);

  // token
  const [statusToken, setStatusToken] = useState(false);

  /* tương tác đóng mở giỏ hàng */
  const openCart = () => {
    setStatusCart(true);
    document.body.style.overflow = "hidden";
  };
  const closeCart = () => {
    setStatusCart(false);
    document.body.style.overflow = "unset";
  };
  /* tương tác đóng mở giỏ hàng */

  /* đăng nhập */
  function handleLogin() {
    setStatusToken(true);
  }
  // render lại value token khi statusToken thay đổi
  useEffect(() => {
    const response = sessionStorage.getItem("accessToken");
    const data = response !== null ? true : false;
    setStatusToken(data);
  }, [statusToken]);
  /* đăng nhập và đăng xuất */

  /* danh sách yêu thích sản phẩm */
  // lấy danh sách yêu thích sản phẩm khi đăng nhập
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken) {
        const response = await wishlistApi.getAll();
        setWishList(response.data);
      }
    };
    fetchData();
  }, [statusToken, wishChange]);

  // lấy số lượng sản phẩm trong danh sách yêu thích
  useEffect(() => {
    const fetchData = () => {
      setWishListSize(wishList.length);
    };
    fetchData();
  }, [wishList]);

  // thay đổi danh sách yêu thích sản phẩm
  function handleChangeWishList() {
    setWishChange(!wishChange);
  }
  /* danh sách yêu thích sản phẩm */

  /* giỏ hàng */
  // tạo giỏ hàng khi vào trang
  useEffect(() => {
    const fetchData = () => {
      if (statusToken === false) {
        const response = localStorage.getItem("cart");
        const data = response !== null ? JSON.parse(response) : [];
        setCart(data);
      }
    };
    fetchData();
  }, [statusToken]);
  // thêm sản phẩm vào giỏ hàng database
  async function handleAddProduct(item) {
    const { product, quantity, totalPrice } = item;
    let product_price = 0;
    if (product.issale) {
      product_price = product.price_sale;
    } else {
      product_price = product.price;
    }
    try {
      await cartApi.insertProduct({
        product_id: product.id,
        total: totalPrice,
        quantity: quantity,
        product_price: product_price,
      });
    } catch (error) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "Có lỗi xảy ra! Vui lòng thử lại",
        icon: "error",
        showConfirmButton: true,
      });
    }
  }
  /**
   * lấy giỏ hàng từ database (nếu không có tạo giỏ hàng)
   * xoá tất cả sản phẩm ở giỏ hàng nếu local storage có sản phẩm
   * thêm sản phẩm từ local storage vào giỏ hàng
   * lấy lại giỏ hàng khi đã thêm hết sản phẩm từ local storage
   * truyền sản phẩm từ giỏ hàng vào local storage
   */
  useEffect(() => {
    const fetchData = async () => {
      if (statusToken && statusToken === true) {
        let response = await cartApi.viewCart();
        let data = response.data;
        if (data !== "") {
          if (cart.length > 0) {
            await cartApi.clearCart();
            await cartApi.createCart();
            cart.map((item) => handleAddProduct(item));
            setTimeout(async () => {
              response = await cartApi.viewCart();
              setCart(response.data);
            }, 3000);
          } else {
            setCart(data);
          }
        } else {
          await cartApi.createCart();
          setCart([]);
        }
      }
      setTimeout(setLoading(false), 3000);
    };
    fetchData();
  }, [statusToken]);

  // render số lượng giỏ hàng
  useEffect(() => {
    const fetchData = () => {
      setCartSize(cart.length);
    };
    fetchData();
  }, [cart]);
  // render lại giỏ hàng
  useEffect(() => {
    const fetchData = () => {
      localStorage.setItem("cart", JSON.stringify(cart));
    };
    fetchData();
  }, [cart]);
  // tạo lại giỏ hàng khi thanh toán
  async function handleOrder() {
    await cartApi.createCart();
    const response = await cartApi.viewCart();
    setCart(response.data);
  }
  // thêm sản phẩm hoặc update số lượng sản phẩm vào giò hàng
  async function handleAddItem(item) {
    const itemExist = cart.some((i) => i.product.id === item.product.id);
    if (statusToken && statusToken === true) {
      handleAddWithLogin(itemExist);
    } else {
      handleAddWithoutLogin(item, itemExist);
    }
  }
  // cập nhật sản phẩm trong
  async function handleAddWithoutLogin(item, itemExist) {
    if (itemExist && itemExist === true) {
      setCart(
        cart.map((x) => {
          if (item.product.id === x.product.id) {
            x.quantity = x.quantity + 1;
            if (x.product.issale) {
              x.totalPrice = x.product.price_sale * x.quantity;
            } else {
              x.totalPrice = x.product.price * x.quantity;
            }
          }
          return x;
        })
      );
      Swal.fire({
        title: "THÔNG BÁO",
        text: "CẬP NHẬT SỐ LƯỢNG SẢN PHẨM THÀNH CÔNG",
        icon: "success",
        showConfirmButton: true,
      }).then((result) => {
        if (result.isConfirmed) {
          openCart();
        }
      });
    } else {
      let price = 0;
      if (item.product.issale && item.product.issale === true) {
        price = item.product.price_sale;
      } else {
        price = item.product.price;
      }
      setCart([
        ...cart,
        Object.assign(item, { quantity: 1, totalPrice: price }),
      ]);
      Swal.fire({
        title: "THÔNG BÁO",
        text: "THÊM SẢN PHẨM VÀO GIỎ HÀNG THÀNH CÔNG",
        icon: "success",
        showConfirmButton: true,
      }).then((result) => {
        if (result.isConfirmed) {
          openCart();
        }
      });
    }
  }
  async function handleAddWithLogin(itemExist) {
    if (itemExist && itemExist === true) {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "CẬP NHẬT SỐ LƯỢNG SẢN PHẨM THÀNH CÔNG",
        icon: "success",
        showConfirmButton: true,
      }).then((result) => {
        if (result.isConfirmed) {
          openCart();
        }
      });
    } else {
      Swal.fire({
        title: "THÔNG BÁO",
        text: "THÊM SẢN PHẨM VÀO GIỎ HÀNG THÀNH CÔNG",
        icon: "success",
        showConfirmButton: true,
      }).then((result) => {
        if (result.isConfirmed) {
          openCart();
        }
      });
    }
    const response = await cartApi.viewCart();
    setCart(response.data);
  }
  // tăng số lượng sản phẩm giỏ hàng
  function handleIncreaseItem(item) {
    setCart(
      cart.map((x) => {
        if (item.product.id === x.product.id) {
          x.quantity = x.quantity + 1;
          if (x.product.issale) {
            x.totalPrice = x.product.price_sale * x.quantity;
          } else {
            x.totalPrice = x.product.price * x.quantity;
          }
        }
        return x;
      })
    );
  }
  // giảm số lượng sản phẩm giỏ hàng
  function handleDecreaseItem(item) {
    setCart(
      cart.map((x) => {
        if (item.product.id === x.product.id) {
          x.quantity = x.quantity - 1;
          if (x.product.issale) {
            x.totalPrice = x.product.price_sale * x.quantity;
          } else {
            x.totalPrice = x.product.price * x.quantity;
          }
        }
        return x;
      })
    );
  }
  // xoá sản phẩm giỏ hàng
  function handleRemoveItem(item) {
    setCart(() => {
      const index = cart.lastIndexOf(item);
      const newCart = [...cart];
      newCart.splice(index, 1);
      return newCart;
    });
  }
  /* giỏ hàng */

  return (
    <Router>
      <ScrollToTop>
        <Header
          openCart={openCart}
          statusToken={statusToken}
          cartSize={cartSize}
          wishListSize={wishListSize}
        />
        <OverPlay statusCart={statusCart} closeCart={closeCart} />
        <CartModal
          cart={cart}
          statusCart={statusCart}
          statusToken={statusToken}
          closeCart={closeCart}
          handleIncreaseItem={handleIncreaseItem}
          handleDecreaseItem={handleDecreaseItem}
          handleRemoveItem={handleRemoveItem}
        />
        <div className="main">
          <Switch>
            <Route exact path="/">
              <Home />
            </Route>
            <Redirect from="/trangchu" to="/">
              <Home />
            </Redirect>
            <Redirect from="/trang-chu" to="/">
              <Home />
            </Redirect>
            <Route exact path="/dang-nhap">
              <WrapLogin handleLogin={handleLogin} />
            </Route>
            <Route exact path="/dang-ky">
              <WrapRegister />
            </Route>
            <Route exact path="/quen-mat-khau">
              <Forgotpass />
            </Route>
            <Route path="/thong-tin-tai-khoan">
              <Account statusToken={statusToken} />
            </Route>
            <Route exact path="/san-pham/gioi-tinh/nam">
              <Product />
            </Route>
            <Route exact path="/san-pham/gioi-tinh/nu">
              <Product />
            </Route>
            <Route exact path="/san-pham-chi-tiet/:id">
              <WrapProductDetai
                cart={cart}
                statusToken={statusToken}
                wishChange={wishChange}
                handleAddItem={handleAddItem}
                handleChangeWishList={handleChangeWishList}
              />
            </Route>
            <Route exact path="/san-pham-yeu-thich">
              <WishList
                statusToken={statusToken}
                wishChange={wishChange}
                handleChangeWishList={handleChangeWishList}
              />
            </Route>
            <Route exact path="/tim-kiem-san-pham/:keyword">
              <WrapProductSearch />
            </Route>
            <Route exact path="/maxacnhan">
              <Maxacnhan />
            </Route>
            <Route path="/resetpass/*">
              <Resetpass />
            </Route>
            <Route exact path="/thanh-toan">
              <Order
                cart={cart}
                statusToken={statusToken}
                loading={loading}
                handleOrder={handleOrder}
              />
            </Route>
            <Route>
              <Error text={"KHÔNG TÌM THẤY TRANG. VUI LÒNG THỬ LẠI"} />
            </Route>
          </Switch>
        </div>
        <Footer />
      </ScrollToTop>
    </Router>
  );
}

export default App;
