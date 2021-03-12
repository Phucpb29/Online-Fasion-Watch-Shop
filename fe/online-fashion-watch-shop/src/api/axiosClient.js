import axios from "axios";
import queryString from "query-string";

const axiosClient = axios.create({
  baseURL: "http://172.16.0.76:8080/api/product",
  headers: {
    "content-type": "application/json",
    "Access-Control-Allow-Origin": "http://localhost:3000",
    "Access-Control-Allow-Headers": "GET",
    "Access-Control-Allow-Credentials": true,
  },
  paramsSerializer: (params) => queryString.stringify(params),
});

axiosClient.interceptors.request.use(async (config) => {
  return config;
});

axiosClient.interceptors.response.use(
  (response) => {
    if (response && response.data) {
      return response;
    }
    return response.data;
  },
  (error) => {
    throw error;
  }
);

export default axiosClient;
