import axiosProductClient from "./axiosProductClient";

const productApi = {
  getBestSellerMale() {
    const url = "/gender/male/0/4/ASC";
    return axiosProductClient.get(url);
  },

  getBestSellerFemale() {
    const url = "/gender/female/0/4/DESC";
    return axiosProductClient.get(url);
  },

  getProductDetailById(id) {
    const url = `/detail/${id}`;
    return axiosProductClient.get(url);
  },

  getPropertyRoot() {
    const url = "/property/getProperty";
    return axiosProductClient.get(url);
  },

  getPropertyRootById(id) {
    const url = `/property/getBranchPropertyFromProductID/${id}`;
    return axiosProductClient.get(url);
  },

  getStatusProductById(id) {
    const url = `/detail/checkStatus/${id}`;
    return axiosProductClient.get(url);
  },

  getProduct(gender, page, size, sort) {
    const url = `/gender/${gender}/${page}/${size}/${sort}`;
    return axiosProductClient.get(url);
  },

  getCountPageProduct(gender, size) {
    const url = `/gender/${gender}/totalRecord/${size}`;
    return axiosProductClient.get(url);
  },

  getProductFilterByPrice(gender, page, size, sort, min, max) {
    const url = `/gender/${gender}/${page}/${size}/${sort}/${min}/${max}`;
    return axiosProductClient.get(url);
  },

  getCountPageProductByPrice(gender, size, min, max) {
    const url = `/gender/${gender}/totalRecord/${size}/${min}/${max}`;
    return axiosProductClient.get(url);
  },

  getProductFilterByProperty(gender, page, size, sort, propertyId) {
    const url = `/gender/${gender}/${page}/${size}/${sort}/${propertyId}`;
    return axiosProductClient.get(url);
  },

  getCountPageProductByProperty(gender, size, propertyId) {
    const url = `/gender/${gender}/totalRecord/${size}/$${propertyId}`;
    return axiosProductClient.get(url);
  },

  getProductFilterAll(gender, page, size, sort, min, max, propertyId) {
    const url = `/gender/${gender}/${page}/${size}/${sort}/${min}/${max}/${propertyId}`;
    return axiosProductClient.get(url);
  },

  getCountPageProductFilterAll(gender, size, min, max, propertyId) {
    const url = `/gender/${gender}/totalRecord/${size}/${min}/${max}/${propertyId}`;
    return axiosProductClient.get(url);
  },
};

export default productApi;
