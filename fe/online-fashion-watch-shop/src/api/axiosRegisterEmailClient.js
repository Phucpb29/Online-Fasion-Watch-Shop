import axios from "axios";
import queryString from "query-string";

const axiosRegisterEmailClient = axios.create({
  baseURL: "http://dwhigh.tech:8080/api/newsletter",
  headers: {
    "content-type": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
    "Access-Control-Allow-Credentials": true,
  },
  paramsSerializer: (params) => queryString.stringify(params),
});

axiosRegisterEmailClient.interceptors.request.use(async (config) => {
  return config;
});

axiosRegisterEmailClient.interceptors.response.use(
  (response) => {
    if (response && response.data) {
      return response;
    }
    return response.data;
  },
  (error) => {
    return error.response;
  }
);

export default axiosRegisterEmailClient;
