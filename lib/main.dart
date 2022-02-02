import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(MyBmi());


class MyBmi extends StatelessWidget {
  const MyBmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF090C22),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}

