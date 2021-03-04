import React from "react";
import PropTypes from "prop-types";

DialogComment.propTypes = {
  isOpenDialog: PropTypes.bool,
};

function DialogComment(props) {
  const { isOpenDialog } = props;
  console.log(isOpenDialog);

  return <div></div>;
}

export default DialogComment;
