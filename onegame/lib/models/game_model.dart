class GameModel {
  final String id;
  final String name;
  final String duration;
  final String gameLevel;
  final String imageName;

  GameModel({
    required this.id,
    required this.name,
    required this.duration,
    required this.imageName,
    this.gameLevel = "Top 6",
  });
}
