import axios from "axios";
import queryString from "query-string";

const token = localStorage.getItem("accessToken");
const axiosDashboardClient = axios.create({
  baseURL: "http://dwhigh.tech:8080/api/dashboard",
  headers: {
    "Content-Type": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
    "Access-Control-Allow-Credentials": true,
    "Authorization": `Bearer ${token}`,

  },
  paramsSerializer: (params) => queryString.stringify(params),
});

axiosDashboardClient.interceptors.request.use(async (config) => {
  return config;
});

axiosDashboardClient.interceptors.response.use(
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

export default axiosDashboardClient;
