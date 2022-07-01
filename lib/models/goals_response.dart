class Goal {
  Goal({required this.content, required this.type});

  final String content;
  final String type;

  static List<Goal> mockGoals() {
    return [
      Goal(content: 'Run 5 km', type: 'Run'),
      Goal(content: 'Run 5 km', type: 'Run'),
      Goal(content: 'Run 5 km', type: 'Run'),
      Goal(content: 'Run 5 km', type: 'Run'),
      Goal(content: 'Run 5 km', type: 'Run'),
      Goal(content: 'Run 5 km', type: 'Run'),
      Goal(content: 'Run 5 km', type: 'Run'),
    ];
  }
}
