import axiosClient from "./axiosClient";

const productApi = {
  getBestSellerMale() {
    const url = "/gender/male/0/4/ASC";
    return axiosClient.get(url);
  },
};

export default productApi;
