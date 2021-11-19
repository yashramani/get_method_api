import 'package:flutter/material.dart';
  import 'package:get_method_api/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



// https://reqres.in/api/users?page=2


