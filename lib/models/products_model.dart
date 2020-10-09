class ProductsModels {
  int id;
  String name;
  String description;
  String regular_price;
  String image;
  String price;
  String quantity;
  List<Results> results;

  ProductsModels({this.id,this.name,this.image,this.price,this.results,this.regular_price,this.description,this.quantity});

  ProductsModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    name = json['name'];
    description = json['description'];
    regular_price = json['regular_price'];
    price = json['price'];
    image = json['images'][0]['src'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['name'] = this.name;
    data['description'] = this.description;
    data['regular_price'] = this.regular_price;
    data['images'] = this.image;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}






class Results {
  String name;
  String quantity;
  String description;
  String image;
  String regular_price;
  String slug;
  List<String> imageUrls;
  String priceType;
  var Price;
  String minPrice;
  String minDiscountedPrice;
  int id;
  Results(
      {this.name,
        this.id,
        this.quantity,
      this.description,
        this.image,
      this.regular_price,
        this.slug,
        this.imageUrls,
        this.priceType,
        this.Price,
        this.minPrice,
        this.minDiscountedPrice});

  Results.fromJson(Map<String, dynamic> json) {

    name = json['name'];
    id = json['id'];
    quantity = json['quantity'];
    description = json['description'];
    image = json['images'][0]['src'];;
    regular_price = json['regular_price'];
    slug = json['slug'];
    imageUrls = json['image_urls'].cast<String>();
    priceType = json['price_type'];
    Price = json['Price'];
    minPrice = json['min_price'];
    minDiscountedPrice = json['min_discounted_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['description'] = this.description;
    data['images'][0]['src'] = this.image;
    data['regular_price'] = this.regular_price;
    data['slug'] = this.slug;
    data['image_urls'] = this.imageUrls;
    data['price_type'] = this.priceType;
    data['Price'] = this.Price;
    data['min_price'] = this.minPrice;
    data['min_discounted_price'] = this.minDiscountedPrice;
    return data;
  }
}
