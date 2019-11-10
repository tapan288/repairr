import 'package:flutter/cupertino.dart';

class Service {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  Service({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageUrl,
  });
}
