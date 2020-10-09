import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mawasm_bookstore/models/products_model.dart';

//ادوات مدرسيه
Future<List<ProductsModels>> fetchSchoolTools() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=133&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//الاسلايدر
Future<List<dynamic>> showSliders() async {
  final reponse = await http.get('https://mawasmbookstore.com/slider-api/',
      headers: {"Accept": "application/json"});
  var convertDataJson = jsonDecode(reponse.body);
  return convertDataJson;
}

//ادوات الخياطه
Future<List<ProductsModels>> fetchKhiataTools() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=99&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//اكسسوارات الرجال
Future<List<ProductsModels>> fetchMensAccessories() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=104&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//القرطاسيه والدفاتر
Future<List<ProductsModels>> fetchStationeryAndNotebooks() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=167&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//ادوات مكتبيه
Future<List<ProductsModels>> fetchOfficeTools() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=134&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//تجاليد
Future<List<ProductsModels>> fetchCladding() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=97&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//الاقلام
Future<List<ProductsModels>> fetchPens() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=137&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//الكتب
Future<List<ProductsModels>> fetchBooks() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=135&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//العاب اطفال
Future<List<ProductsModels>> fetchToys() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=105&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//شنط
Future<List<ProductsModels>> fetchBags() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=96&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//البويه بخاخ
Future<List<ProductsModels>> fetchPaintSpray() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=124&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//المصحف
Future<List<ProductsModels>> fetchTheKoran() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=138&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//ادوات فنيه
Future<List<ProductsModels>> fetchArtTools() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=103&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

//اكياس تغليف الهدايا
Future<List<ProductsModels>> fetchGifts() async {
  final reponse = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=98&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(reponse.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}
Future<void> addToCart(String id,String quantity)async{
  print(id);
  print(quantity);
//  final url = "https://mawasmbookstore.com/wp-json/cocart/v1/add-item";
//  final response = await http.post(url,
//      headers: {"Accept": "application/json"},
//      body: {"product_id": "9576", "quantity": "1"});
//  var data = json.decode(response.body);
//  print(data);
 var url  = 'https://mawasmbookstore.com/wp-json/cocart/v1/add-item/';
  try{
    var response =await http.post(url,
  body: {"product_id": id, "quantity": quantity});
    print(response.statusCode);
    var data = json.decode(response.body);
    print(data);

  }catch(e){
    print(e);
    throw e;
  }
}
//العاب الكترونيه
Future<List<ProductsModels>> fetchVideoGames() async {
  final response = await http.get(
      'https://mawasmbookstore.com/wp-json/wc/v3/products?category=132&consumer%20key=ck_d7834df4d8cd70c4d3f54a421ea0a6540e63ae4c&consumer%20secret=cs_6c4507d1e3bfe569746ae97349008ac42cf6a391',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(response.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}Future<List<ProductsModels>> fetchCart() async {
  final response = await http.get(
      'https://mawasmbookstore.com/wp-json/cocart/v1/get-cart',
      headers: {"Accept": "application/json"});
  List convertDataJson = jsonDecode(response.body);
  List<ProductsModels> items = [];
  convertDataJson.forEach((element) {
    items.add(ProductsModels.fromJson(element));
  });
  return items;
}

