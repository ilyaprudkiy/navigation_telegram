import 'package:flutter/material.dart';
import 'package:my_project/screens/user_profile/user_profile.dart';

//Не забывай про форматирование кода Ctrl + Alt + L

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserProfile(),
    );
  }
}
