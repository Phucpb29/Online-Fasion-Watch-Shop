import axiosWishListhClient from "./axiosWishListhClient";

const wishlistApi = {
  getAll() {
    const url = "/readList";
    return axiosWishListhClient.get(url);
  },

  like(idProduct) {
    const url = `/addToList/${idProduct}`;
    return axiosWishListhClient.get(url);
  },

  unLike(idWishList) {
    const url = `/removeProduct/${idWishList}`;
    return axiosWishListhClient.delete(url);
  },
};

export default wishlistApi;
