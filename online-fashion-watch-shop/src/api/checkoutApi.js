import axiosCheckoutClient from "./axiosCheckoutClinet";

const checkApi = {
  order(userId, { name, phone, address }) {
    const url = `/order/${userId}`;
    return axiosCheckoutClient.post(url, {
      name: name,
      phone: phone,
      address: address,
    });
  },
};

export default checkApi;
