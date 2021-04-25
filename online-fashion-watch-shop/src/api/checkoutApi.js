import axiosCheckoutClient from "./axiosCheckoutClinet";

const checkApi = {
  getVoucher(voucherCode) {
    const url = `/getVoucherInfo/${voucherCode}`;
    return axiosCheckoutClient.get(url);
  },

  order(userId, { name, phone, address }) {
    const url = `/order/${userId}`;
    return axiosCheckoutClient.post(url, {
      name: name,
      phone: phone,
      address: address,
    });
  },

  orderWithVoucher(userId, voucherCode, { name, phone, address }) {
    const url = `/order/${userId}/${voucherCode}`;
    return axiosCheckoutClient.post(url, {
      name: name,
      phone: phone,
      address: address,
    });
  },
};

export default checkApi;
