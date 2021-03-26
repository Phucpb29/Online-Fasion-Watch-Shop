import axios from "axios";
import queryString from "query-string";

const axiosProductCommentClient = axios.create({
  baseURL: "http://dwhigh.tech:8080/api/product/comment",
  headers: {
    "content-type": "application/json",
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "*",
    "Access-Control-Allow-Credentials": true,
  },
  paramsSerializer: (params) => queryString.stringify(params),
});

axiosProductCommentClient.interceptors.request.use(async (config) => {
  return config;
});

axiosProductCommentClient.interceptors.response.use(
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

export default axiosProductCommentClient;
