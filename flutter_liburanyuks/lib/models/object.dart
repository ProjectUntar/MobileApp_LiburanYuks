class Object {
  Object({
    required this.photosName,
    required this.name,
    required this.gist,
  });
  final String photosName;
  final String name;
  final String gist;

  String get tag => name;
}
