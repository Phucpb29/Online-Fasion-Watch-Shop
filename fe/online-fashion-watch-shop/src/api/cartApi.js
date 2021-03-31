import axiosCartClient from "./axiosCartClient";

const cartApi = {
  createCart() {
    const url = "/createCart";
    return axiosCartClient.post(url);
  },

  viewCart() {
    const url = "/viewCart";
    return axiosCartClient.get(url);
  },

  insertProduct(body) {
    const url = "/addProduct";
    return axiosCartClient.put(url, body);
  },

  updateProduct(body) {
    const url = "/updateProduct";
    return axiosCartClient.put(url, body);
  },

  deleteProduct(cartDetailID) {
    const url = `/${cartDetailID}`;
    return axiosCartClient.delete(url);
  },
};

export default cartApi;
