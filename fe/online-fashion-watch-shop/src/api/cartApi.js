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

  clearCart() {
    const url = "/clearCart";
    return axiosCartClient.delete(url);
  },

  insertProduct(body) {
    const url = "/addProduct";
    return axiosCartClient.put(url, body);
  },

  updateProduct(cartDetailID, newQuantity) {
    const url = `/updateProduct/${cartDetailID}/${newQuantity}`;
    return axiosCartClient.put(url);
  },

  deleteProduct(cartDetailID) {
    const url = `/removeProduct/${cartDetailID}`;
    return axiosCartClient.delete(url);
  },
};

export default cartApi;
