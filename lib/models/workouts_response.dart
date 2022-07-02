class Workout {
  Workout({required this.imageUrl, required this.type});

  final String imageUrl;
  final String type;

  static List<Workout> mockWorkouts() {
    return [
      Workout(imageUrl: 'assets/pushout.png', type: 'Run!!'),
      Workout(imageUrl: 'assets/pushout.png', type: 'Run'),
      Workout(imageUrl: 'assets/pushout.png', type: 'Run'),
      Workout(imageUrl: 'assets/pushout.png', type: 'Run'),
    ];
  }
}
