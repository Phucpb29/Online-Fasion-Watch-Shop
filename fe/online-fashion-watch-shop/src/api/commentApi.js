import axiosProductCommentClient from "./axiosProductCommentClient";

const commentApi = {
  getCommentByProductId(page, size, id) {
    const url = `/loadProductComment/${page}/${size}/${id}`;
    return axiosProductCommentClient.get(url, { params: { page, size, id } });
  },

  getCountCommentByProductId(size, id) {
    const url = `loadProductComment/pageCount/${size}/${id}`;
    return axiosProductCommentClient.get(url, { params: { size, id } });
  },
};

export default commentApi;
