import axiosRegister from "./axiosRegister";
import axiosUserClient from "./axiosUserClient";

const userApi = {
  login(body) {
    const url = "/signin";
    return axiosUserClient.post(url, body);
  },

  register(body) {
    const url="/createUser";
    return axiosRegister.post(url,body);
  }
};

export default userApi;
