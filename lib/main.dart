import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';

void main() async {
  // WAJIB untuk inisialisasi plugin (termasuk notifikasi)
  WidgetsFlutterBinding.ensureInitialized();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown[800],
        scaffoldBackgroundColor: Colors.brown[50],
        fontFamily: 'Roboto',
      ),
      home: WelcomePage(), // Halaman awal
    );
  }
}
