import axiosProductClient from "./axiosProductClient";

const productApi = {
  getBestSellerMale() {
    const url = "/gender/male/0/4/ASC";
    return axiosProductClient.get(url);
  },

  getBestSellerFemale() {
    const url = "/gender/female/0/4/ASC";
    return axiosProductClient.get(url);
  },

  getProductDetailById(id) {
    const url = `/getinfo/${id}`;
    return axiosProductClient.get(url);
  },

  getPropertyRoot() {
    const url = "/property/getRootProperty";
    return axiosProductClient.get(url);
  },

  getPropertyRootById(id) {
    const url = `/property/getBranchPropertyFromProductID/${id}`;
    return axiosProductClient.get(url);
  },
};

export default productApi;
