class HotelModel {
  final String image;
  final String hotelName;
  final String country;
  final num price;
  bool isFavorite=false;

  HotelModel({
    required this.image,
    required this.hotelName,
    required this.country,
    required this.price,
    this.isFavorite=false
  });
}
