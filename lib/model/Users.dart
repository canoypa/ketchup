class Users {
  int userId;
  String displayName;
  String photoUrl;

  Users({
    required this.userId,
    required this.displayName,
    this.photoUrl = "",
  });
}