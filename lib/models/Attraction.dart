class Attraction {
  final int id;
  final String title;
  final String des;
  final String image;

  final double lat;
  final double lng;

  final bool isPopular = true;

  const Attraction(
      {required this.id,
      required this.title,
      required this.des,
      required this.image,
      required this.lat,
      required this.lng});
}
