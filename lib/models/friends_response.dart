class Friend {
  Friend({required this.username, required this.picUrl});

  final String username;
  final String picUrl;

  static List<Friend> mockFriends() {
    return [
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
      Friend(username: 'Fulanito', picUrl: 'assets/profile.jpg'),
    ];
  }
}
