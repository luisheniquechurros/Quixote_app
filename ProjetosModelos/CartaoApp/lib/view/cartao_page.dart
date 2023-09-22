import 'package:flutter/material.dart';

import '../components/header.dart';

class CartaoPage extends StatefulWidget {
  const CartaoPage({super.key});

  @override
  State<CartaoPage> createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderAppBar(
        title: 'CARTÃO',
      ),
      body: Center(
        child: Text("Conteúdo"),
      ),

    );
  }
}
