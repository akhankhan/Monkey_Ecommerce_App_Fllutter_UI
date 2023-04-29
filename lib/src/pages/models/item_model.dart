part of models;

class ItemModel {
  final String? imagePath;
  final String? name;
  final String? lable;
  final double? rating;
  final int? ratingCount;

  ItemModel({
    this.imagePath,
    this.name,
    this.lable,
    this.rating,
    this.ratingCount,
  });

  static List<ItemModel> popular = [
    ItemModel(
      imagePath: 'assets/home/homescreen_image1.jpg',
      name: 'Minute by tuk tuk',
      lable: 'Western Food',
      rating: 4.9,
      ratingCount: 124,
    ),
    ItemModel(
      imagePath: 'assets/home/homescreen_image2.jpg',
      name: 'Cafe de Noir',
      lable: 'Western Food',
      rating: 4.9,
      ratingCount: 124,
    ),
    ItemModel(
      imagePath: 'assets/home/homescreen_image3.jpg',
      name: 'Bakes by Tella',
      lable: 'Western Food',
      rating: 4.9,
      ratingCount: 124,
    ),
  ];

  static List<ItemModel> mostPopular = [
    ItemModel(
      imagePath: 'assets/home/homescreen_image4.jpg',
      name: 'Minute by tuk tuk',
      lable: 'Western Food',
      rating: 4.9,
      ratingCount: 124,
    ),
    ItemModel(
      imagePath: 'assets/home/homescreen_image5.jpg',
      name: 'Burger by Bella',
      lable: 'Western Food',
      rating: 4.9,
      ratingCount: 124,
    ),
  ];

  static List<ItemModel> recentItem = [
    ItemModel(
      imagePath: 'assets/home/homescreen_image1.jpg',
      name: 'Mulberry Pizza by Josh',
      lable: 'Western Food',
      rating: 4.9,
      ratingCount: 124,
    ),
    ItemModel(
      imagePath: 'assets/home/homescreen_image3.jpg',
      name: 'Bartia',
      lable: 'Coffe',
      rating: 4.9,
      ratingCount: 124,
    ),
    ItemModel(
      imagePath: 'assets/home/homescreen_image3.jpg',
      name: 'Pizaa Rush Hour',
      lable: 'Italin Food',
      rating: 4.9,
      ratingCount: 124,
    ),
  ];
}
