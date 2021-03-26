// import axiosRegister from "./axiosRegister";
import axiosUserClient from "./axiosUserClient";

const userApi = {
  login(body) {
    const url = "/signin";
    return axiosUserClient.post(url, body);
  },

  // register(body) {
  //   const url = "/createUser";
  //   // return axiosRegister.post(url,body);
  // },

  checkValidToken(token) {
    const url = `/checkValidToken/${token}`;
    return axiosUserClient.get(url);
  },
};

export default userApi;
