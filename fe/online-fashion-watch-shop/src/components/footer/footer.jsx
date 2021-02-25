import React from "react";
import auth from "../.././assets/image/auth-azY.svg";
import certification from "../.././assets/image/bct-5Sz.png";
import momo from "../.././assets/image/momo-tS5.png";
import shipping from "../.././assets/image/shipping-2xB.svg";
import vnpay from "../.././assets/image/vnpay-bBZ.png";
import warranty from "../.././assets/image/warranty-cUS.svg";
import "./css/footer.css";

function Footer() {
  return (
    <footer className="footer">
      <div className="footer__policy">
        <div className="footer__policy-item">
          <img src={warranty} alt="" />
          <p>BẢO HÀNH 10 NĂM LỖI NHÀ SẢN XUẤT</p>
        </div>
        <div className="footer__policy-item">
          <img src={shipping} alt="" />
          <p>FREESHIP VỚI ĐƠN HÀNG TỪ 700.000 VND</p>
        </div>
        <div className="footer__policy-item">
          <img src={auth} alt="" />
          <p>CAM KẾT 100% HÀNG CHÍNH HÃNG</p>
        </div>
      </div>
      <div className="footer__newsletter">
        <div className="footer__newsletter-title">
          <p className="title">ĐĂNG KÍ NHẬN TIN MỚI</p>
          <p className="sub__title">
            NHẬN CÁC TIN TỨC VỀ CHƯƠNG TRÌNH KHUYẾN MÃI VÀ SỚM NHẤT
          </p>
        </div>
        <form className="footer__newsletter-form">
          <div className="form-control">
            <input
              type="text"
              placeholder="Nhập email để nhận các tin khuyến mãi"
            />
            <button className="form__button">ĐĂNG KÝ</button>
          </div>
        </form>
      </div>
      <div className="footer__showroom">
        <div className="footer__showroom-item item__policy">
          <div className="title">
            <p>CHÍNH SÁCH</p>
          </div>
          <div className="content">
            <div className="content__policy">
              <a className="policy__link" href="/">
                Chính sách vận chuyển
              </a>
            </div>
            <div className="content__policy">
              <a className="policy__link" href="/">
                Chính sách đổi trả
              </a>
            </div>
            <div className="content__policy">
              <a className="policy__link" href="/">
                Chính sách bảo hành
              </a>
            </div>
          </div>
        </div>
        <div className="footer__showroom-item item__hn">
          <div className="title">HANOI STORES</div>
          <div className="content">
            <div className="content__address">
              <span className="store">Store 1:</span>
              <span className="address">33 Hàm Long, Hoàn Kiếm, Hà Nội.</span>
            </div>
            <div className="content__address">
              <span className="store">Store 2:</span>
              <span className="address">
                9 B7 Phạm Ngọc Thạch, Đống Đa, Hà Nội.
              </span>
            </div>
            <div className="content__address">
              <span className="store">Store 3:</span>
              <span className="address">173C Kim Mã, Ba Đình, Hà Nội.</span>
            </div>
          </div>
        </div>
        <div className="footer__showroom-item item__hcm">
          <div className="title">TP.HCM STORES</div>
          <div className="content">
            <div className="content__address">
              <span className="store">Store 4:</span>
              <span className="address">
                25 Nguyễn Trãi, P.Bến Thành, Quận 1, TPHCM.
              </span>
            </div>
            <div className="content__address">
              <span className="store">Store 5:</span>
              <span className="address">
                Lầu 2, 63 Hồ Tùng Mậu, Quận 1, TPHCM.
              </span>
            </div>
          </div>
        </div>
      </div>
      <div className="footer__navigation">
        <a className="footer__navigation-item" href="/">
          ĐỒNG HỒ NAM
        </a>
        <a className="footer__navigation-item" href="/">
          ĐỒNG HỒ NỮ
        </a>
        <a className="footer__navigation-item" href="/">
          PHỤ KIỆN
        </a>
        <a className="footer__navigation-item" href="/">
          BLOG
        </a>
        <a className="footer__navigation-item" href="/">
          CHÍNH SÁCH
        </a>
        <a className="footer__navigation-item" href="/">
          TUYỂN DỤNG
        </a>
      </div>
      <div className="footer__certification">
        <div className="footer__certification-content">
          <p>© 2019 - Bản quyền của CTCP PHÁT TRIỂN SẢN PHẨM SÁNG TẠO VIỆT</p>
          <p>
            Giấy chứng nhận ĐKKD số 0108150321 do Sở Kế hoạch và Đầu tư Thành
            phố Hà Nội cấp ngày 29/01/2018 123C Thụy Khuê, Tây Hồ, Hà Nội
          </p>
        </div>
        <div className="footer__certification-img">
          <img className="img" src={momo} alt="" />
          <img className="img" src={vnpay} alt="" />
          <img className="img__certification" src={certification} alt="" />
        </div>
      </div>
    </footer>
  );
}

export default Footer;
