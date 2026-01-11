class CategoryModel {
  final int? id;
  final String? title;
  final double? price;
  final String? image;
  final String? description;
  final String? category;

  CategoryModel({
    this.id,
    this.title,
    this.price,
    this.image,
    this.description,
    this.category,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'],
      description: json['description'],
      category: json['category'],
    );
  }
}
