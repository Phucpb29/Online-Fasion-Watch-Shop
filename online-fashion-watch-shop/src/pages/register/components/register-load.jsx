import React from "react";
import PropTypes from "prop-types";
import LoadingOverplay from "../../../components/loading/loading";

RegisterLoad.propTypes = {
  registerLoading: PropTypes.bool,
};

RegisterLoad.DefaultPropTypes = {
  registerLoading: false,
};

function RegisterLoad(props) {
  console.log(props);
  const { registerLoading } = props;
  return (
    <div
      className={
        registerLoading
          ? "register__loading register__loading-active"
          : "register__loading"
      }
    >
      <LoadingOverplay />
    </div>
  );
}

export default RegisterLoad;
