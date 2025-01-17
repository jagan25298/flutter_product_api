class UserModel {
  String? username;
  String? password;
  String? authToken;

  UserModel({this.username, this.password, this.authToken});
}
class ProductModel {
  List<Products>? products;
  dynamic? total;
  dynamic? skip;
  dynamic? limit;

  ProductModel({this.products, this.total, this.skip, this.limit});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Products {
  dynamic? id;
  String? title;
  String? description;
  dynamic? price;
  double? discountPercentage;
  double? rating;
  dynamic? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Products(
      {this.id,
        this.title,
        this.description,
        this.price,
        this.discountPercentage,
        this.rating,
        this.stock,
        this.brand,
        this.category,
        this.thumbnail,
        this.images});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage']?.toDouble(); // Convert to double
    rating = json['rating']?.toDouble();
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discountPercentage'] = this.discountPercentage;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}
// class LoginModel {
//   int? id;
//   String? username;
//   String? email;
//   String? firstName;
//   String? lastName;
//   String? gender;
//   String? image;
//   String? token;
//
//   LoginModel(
//       {this.id,
//         this.username,
//         this.email,
//         this.firstName,
//         this.lastName,
//         this.gender,
//         this.image,
//         this.token});
//
//   LoginModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     username = json['username'];
//     email = json['email'];
//     firstName = json['firstName'];
//     lastName = json['lastName'];
//     gender = json['gender'];
//     image = json['image'];
//     token = json['token'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['username'] = this.username;
//     data['email'] = this.email;
//     data['firstName'] = this.firstName;
//     data['lastName'] = this.lastName;
//     data['gender'] = this.gender;
//     data['image'] = this.image;
//     data['token'] = this.token;
//     return data;
//   }
// }
