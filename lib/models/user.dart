class User {
  final int numberOfItemInCart;
  final String id, fullName, eMail, image, banner;

  User(
      {required this.id,
      required this.fullName,
      required this.numberOfItemInCart,
      required this.image,
      required this.banner,
      required this.eMail});
}
