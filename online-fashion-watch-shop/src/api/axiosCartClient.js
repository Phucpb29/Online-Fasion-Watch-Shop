import axios from "axios";
import queryString from "query-string";

const token = sessionStorage.getItem("accessToken");
const axiosCartClient = axios.create({
  baseURL: "http://dwhigh.tech:8080/api/cart",
  headers: {
    "Content-Type": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
    "Access-Control-Allow-Credentials": true,
    Authorization: `Bearer ${token}`,
  },
  paramsSerializer: (params) => queryString.stringify(params),
});

axiosCartClient.interceptors.request.use(async (config) => {
  return config;
});

axiosCartClient.interceptors.response.use(
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

export default axiosCartClient;
