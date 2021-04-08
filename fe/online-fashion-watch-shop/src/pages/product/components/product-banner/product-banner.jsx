import PropTypes from "prop-types";
import React from "react";
import BannerFemale from "./banner-female";
import BannerMale from "./banner-male";
import "./css/product-banner.css";

Banner.propTypes = {
  gender: PropTypes.string,
};

Banner.DefaultPropTypes = {
  gender: "",
};

function Banner(props) {
  const { gender } = props;
  console.log(gender);
  return (
    <div className="product__bannner">
      {gender === "male" ? <BannerMale /> : <BannerFemale />}
    </div>
  );
}

export default Banner;
