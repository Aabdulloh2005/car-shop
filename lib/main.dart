import 'package:flutter/material.dart';
import 'package:homework/screens/desktop.dart';
import 'package:homework/screens/main_page.dart';

void main(List<String> args) {
  runApp(const CarShop());
}

class CarShop extends StatelessWidget {
  const CarShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQuery.of(context).size.width < 600 ? CarRent() : Desktop(),
    );
  }
}
