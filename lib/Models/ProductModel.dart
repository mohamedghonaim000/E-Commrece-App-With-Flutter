class ProductModel {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  List<String>? images;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.images,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = (json['price'] != null) ? json['price'].toDouble() : null;
    discountPercentage = (json['discountPercentage'] != null)
        ? json['discountPercentage'].toDouble()
        : null;
    rating = (json['rating'] != null) ? json['rating'].toDouble() : null;
    images = json['images'] != null ? List<String>.from(json['images']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'images': images,
    };
  }
}
