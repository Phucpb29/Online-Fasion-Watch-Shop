import axiosDashboardClient from "./axiosDashboardClient";

const dashboardApi = {
  getInfo() {
    const url = "/viewInfo";
    return axiosDashboardClient.get(url);
  },

  updatePassword(body) {
    const url = `/changePassword`;
    return axiosDashboardClient.post(url, body);
  },

  updateInfo(body) {
    const url = "/updateInfo";
    return axiosDashboardClient.post(url, body);
  },

  viewOrderHistory() {
    const url = "/viewPurchaseHistory";
    return axiosDashboardClient.get(url);
  },

  commentOrder(body) {
    const url = "/rateProduct";
    return axiosDashboardClient.post(url, body);
  },
};

export default dashboardApi;
