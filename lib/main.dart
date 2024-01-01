import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton/home_screen.dart';
import 'package:radiobutton/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<homeprovider>(create: (_)=>homeprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}