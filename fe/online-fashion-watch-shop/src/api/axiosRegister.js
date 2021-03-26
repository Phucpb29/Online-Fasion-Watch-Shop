import axios from "axios";
import queryString from "query-string";

const axiosRegister = axios.create({
  baseURL: "http://dwhigh.tech:8080/api/auth/register",
  headers: {
    "Content-Type": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
    "Access-Control-Allow-Credentials": true,
  },
  paramsSerializer: (params) => queryString.stringify(params),
});

axiosRegister.interceptors.request.use(async (config) => {
  return config;
});

axiosRegister.interceptors.response.use(
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

export default axiosRegister;
