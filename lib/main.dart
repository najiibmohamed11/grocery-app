import 'package:add_to_cart/cartmodel.dart';
import 'package:add_to_cart/pages/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Cartmodel())],
      child: MaterialApp(home: Initial_page()),
    );
  }
}
