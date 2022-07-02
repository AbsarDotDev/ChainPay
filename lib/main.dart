import 'package:chainpay/profile.dart';
import 'package:flutter/material.dart';

import 'open.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chain Pay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Open(),
    );
  }
}
