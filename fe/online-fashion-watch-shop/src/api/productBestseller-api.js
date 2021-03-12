import axiosClient from "./axiosClient";

const productBestSeller = {
  getAll() {
    const url = "/gender/male/0/16/ASC";
    return axiosClient.get(url);
  },
};

export default productBestSeller;
