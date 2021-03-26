import axiosDashboardClient from "./axiosDashboardClient";

const dashboardApi = {
  getInfo() {
    const url = "viewInfo";
    return axiosDashboardClient.post(url);
  },

  updatePassword(body) {
    const url = `/changePassword`;
    return axiosDashboardClient.post(url, body);
  },
};

export default dashboardApi;
