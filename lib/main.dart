import 'package:flutter/material.dart';
import 'package:food_app_concept/provider/services.dart';
import 'package:food_app_concept/screens/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Services(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Home Repair',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: Home()),
    );
  }
}
