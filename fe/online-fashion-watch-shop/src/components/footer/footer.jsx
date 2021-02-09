import React from "react";
import "./css/footer.css";

function Footer() {
  return (
    <React.Fragment>
      <div class="footer__policy">
        <div class="footer__policy-item">
          <img src="./assets/image/warranty-cUS.svg" alt="" />
          <p>BẢO HÀNH 10 NĂM LỖI NHÀ SẢN XUẤT</p>
        </div>
        <div class="footer__policy-item">
          <img src="./assets/image/shipping-2xB.svg" alt="" />
          <p>FREESHIP VỚI ĐƠN HÀNG TỪ 700.000 VND</p>
        </div>
        <div class="footer__policy-item">
          <img src="./assets/image/auth-azY.svg" alt="" />
          <p>CAM KẾT 100% HÀNG CHÍNH HÃNG</p>
        </div>
      </div>
      <div class="footer__newsletter">
        <div class="footer__newsletter-title">
          <p class="title">ĐĂNG KÍ NHẬN TIN MỚI</p>
          <p class="sub__title">
            NHẬN CÁC TIN TỨC VỀ CHƯƠNG TRÌNH KHUYẾN MÃI VÀ SỚM NHẤT
          </p>
        </div>
        <form class="footer__newsletter-form">
          <div class="form-control">
            <input
              type="text"
              placeholder="Nhập email để nhận các tin khuyến mãi"
            />
            <button class="form__button">ĐĂNG KÝ</button>
          </div>
        </form>
      </div>
      <div class="footer__showroom">
        <div class="footer__showroom-item item__policy">
          <div class="title">
            <p>CHÍNH SÁCH</p>
          </div>
          <div class="content">
            <div class="content__policy">
              <a class="policy__link" href="/">
                Chính sách vận chuyển
              </a>
            </div>
            <div class="content__policy">
              <a class="policy__link" href="/">
                Chính sách đổi trả
              </a>
            </div>
            <div class="content__policy">
              <a class="policy__link" href="/">
                Chính sách bảo hành
              </a>
            </div>
          </div>
        </div>
        <div class="footer__showroom-item item__hn">
          <div class="title">HANOI STORES</div>
          <div class="content">
            <div class="content__address">
              <span class="store">Store 1:</span>
              <span class="address">33 Hàm Long, Hoàn Kiếm, Hà Nội.</span>
            </div>
            <div class="content__address">
              <span class="store">Store 2:</span>
              <span class="address">
                9 B7 Phạm Ngọc Thạch, Đống Đa, Hà Nội.
              </span>
            </div>
            <div class="content__address">
              <span class="store">Store 3:</span>
              <span class="address">173C Kim Mã, Ba Đình, Hà Nội.</span>
            </div>
          </div>
        </div>
        <div class="footer__showroom-item item__hcm">
          <div class="title">TP.HCM STORES</div>
          <div class="content">
            <div class="content__address">
              <span class="store">Store 4:</span>
              <span class="address">
                25 Nguyễn Trãi, P.Bến Thành, Quận 1, TPHCM.
              </span>
            </div>
            <div class="content__address">
              <span class="store">Store 5:</span>
              <span class="address">Lầu 2, 63 Hồ Tùng Mậu, Quận 1, TPHCM.</span>
            </div>
          </div>
        </div>
      </div>
      <div class="footer__navigation">
        <a class="footer__navigation-item" href="/">
          ĐỒNG HỒ NAM
        </a>
        <a class="footer__navigation-item" href="/">
          ĐỒNG HỒ NỮ
        </a>
        <a class="footer__navigation-item" href="/">
          PHỤ KIỆN
        </a>
        <a class="footer__navigation-item" href="/">
          BLOG
        </a>
        <a class="footer__navigation-item" href="/">
          CHÍNH SÁCH
        </a>
        <a class="footer__navigation-item" href="/">
          TUYỂN DỤNG
        </a>
      </div>
      <div class="footer__certification">
        <div class="footer__certification-content">
          <p>© 2019 - Bản quyền của CTCP PHÁT TRIỂN SẢN PHẨM SÁNG TẠO VIỆT</p>
          <p>
            Giấy chứng nhận ĐKKD số 0108150321 do Sở Kế hoạch và Đầu tư Thành
            phố Hà Nội cấp ngày 29/01/2018 123C Thụy Khuê, Tây Hồ, Hà Nội
          </p>
        </div>
        <div class="footer__certification-img">
          <img class="img" src="./assets/image/momo-tS5.png" alt="" />
          <img class="img" src="./assets/image/vnpay-bBZ.png" alt="" />
          <img
            class="img__certification"
            src="./assets/image/bct-5Sz.png"
            alt=""
          />
        </div>
      </div>
    </React.Fragment>
  );
}

export default Footer;
