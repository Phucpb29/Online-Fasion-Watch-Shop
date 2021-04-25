import React from "react";
import { Redirect } from "react-router-dom";
import Register from "./register";

function WrapRegister() {
  const accessToken = sessionStorage.getItem("accessToken");
  return (
    <div>
      {accessToken ? <Redirect from="/dang-ky" to="/" /> : <Register />}
    </div>
  );
}

export default WrapRegister;
