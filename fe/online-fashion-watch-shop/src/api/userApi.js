import axiosUserClient from "./axiosUserClient";

const userApi = {
  login(body) {
    const url = "/signin";
    return axiosUserClient.post(url, body);
  },
};

export default userApi;
