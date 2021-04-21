import axiosForgotPassClient from "./axiosForgotPassClient";

const forgotpassApi = {
  getLinkRecover(email) {
    const url = `/${email}`;
    return axiosForgotPassClient.get(url);
  },

  recoverPass(body) {
    const url = "/recover";
    return axiosForgotPassClient.post(url, body);
  },
};

export default forgotpassApi;
