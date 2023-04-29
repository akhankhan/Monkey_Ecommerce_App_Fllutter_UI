part of models;

class CategoryModel {
  final String? imagePath;
  final String? label;

  CategoryModel({this.imagePath, this.label});

  static List<CategoryModel> list = [
    CategoryModel(
      label: 'Peshawar',
      imagePath: 'assets/home/homescreen_image1.jpg',
    ),
    CategoryModel(
      label: 'Lahore',
      imagePath: 'assets/home/homescreen_image2.jpg',
    ),
    CategoryModel(
      label: 'Karachi',
      imagePath: 'assets/home/homescreen_image3.jpg',
    ),
    CategoryModel(
      label: 'Islamabad',
      imagePath: 'assets/home/homescreen_image4.jpg',
    ),
  ];
}
