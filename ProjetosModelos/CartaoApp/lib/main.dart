import 'package:cartao_app/view/cartao_page.dart';
import 'package:cartao_app/view/extratro_page.dart';
import 'package:cartao_app/view/fechamento_page.dart';
import 'package:cartao_app/view/login_page.dart';
import 'package:cartao_app/view/main_page.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const CartaoApp());
}

class CartaoApp extends StatelessWidget {
  const CartaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão ASP',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 16,
            ),
            bodyLarge: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
        ),
      ),
      //home: MainPage(),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const MainPage(),
        "/fechamento": (context) => const FechamentoPage(),
        "/extrato": (context) => const ExtratoPage(),
        "/cartao": (context) => const CartaoPage(),
      },
    );
  }
}
