import React from "react";
import aboutUs1 from "../../../assets/image/home-aboutus-1.jpg";
import aboutUs2 from "../../../assets/image/home-aboutus-2.jpg";
import aboutUs3 from "../../../assets/image/home-aboutus-3.jpg";

function About(props) {
  return (
    <div className="home__about">
      <div className="about__title">
        <p>ABOUT US</p>
      </div>
      <div className="about__text">
        <span>
          Cuối năm 2019, 3 chàng trai đam mê Startup và Đồng hồ quyết định thành
          lập Diamond Watches Fashion, nhưng ngay từ đầu, chúng tôi đã biết
          rằng: D.W sinh ra với một sứ mệnh lớn lao hơn, không chỉ dừng lại là
          một thương hiệu đồng hồ. Chúng tôi muốn mang tới một nguồn cảm hứng,
          một sự thay đổi về tư duy, về suy nghĩ và chính những cái chúng tôi
          gọi là trải nghiệm cho người trẻ.
        </span>
      </div>
      <div className="about__img">
        <div className="img__box">
          <img src={aboutUs1} alt="" />
        </div>
        <div className="img__box img__2">
          <img src={aboutUs2} alt="" />
        </div>
        <div className="img__box">
          <img src={aboutUs3} alt="" />
        </div>
      </div>
    </div>
  );
}

export default About;
