import React from "react";
import ReactLoading from "react-loading";

function LoadingOverplay() {
  return (
    <div className="loading__overplay">
      <ReactLoading type="spin" color="#000" />
    </div>
  );
}

export default LoadingOverplay;
