import 'package:flutter/material.dart';
import 'package:settministry/routes/setting.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),

    initialRoute: '/setting',
    routes: {
      '/setting': (context) => const SettingMinistry(),



    });
  }
}
