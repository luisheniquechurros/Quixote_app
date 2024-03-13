import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quixote_app/pages/login_page.dart';
import 'package:quixote_app/pages/splash_page.dart';
import 'package:quixote_app/pagina_inicial.dart';

void main() {
  runApp(QuixoteApp());
}

class QuixoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
      },
    );
  }
}
