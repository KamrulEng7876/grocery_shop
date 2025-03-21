import 'package:flutter/material.dart';
import 'package:grocery_shop/model/cart_model.dart';
import 'package:grocery_shop/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (create)=>CartModel(),
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );

  }
}
