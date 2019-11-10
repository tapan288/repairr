import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:food_app_concept/models/apiUtil.dart';
import 'package:food_app_concept/provider/service.dart';
import 'package:http/http.dart' as http;

class Services with ChangeNotifier {
  List<Service> _items = [];
  List<Service> get items {
    return _items;
  }

  Future<void> fetchRecentProducts() async {
    final url = ApiUtil.Main_Api_Url + ApiUtil.fetchRecentServices;
    print(url);
    final response = await http.get(url);
    List extractedData = json.decode(response.body);
    print(extractedData);
    final List<Service> loadedProducts = [];

    extractedData.forEach((item) {
      loadedProducts.add(Service(
        id: item['id'],
        description: item['desc'],
        imageUrl: ApiUtil.imagePath + item['image'],
        name: item['sname'],
      ));
    });
    _items = loadedProducts;
    notifyListeners();
  }
}
