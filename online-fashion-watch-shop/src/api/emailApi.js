import axiosRegisterEmailClient from "./axiosRegisterEmailClient";

const emailApi = {
  registerEmail(email) {
    const url = `/registerEmail`;
    return axiosRegisterEmailClient.post(url, email);
  },
};

export default emailApi;
