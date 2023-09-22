import 'package:flutter/material.dart';

import '../components/header.dart';

class ExtratoPage extends StatefulWidget {
  const ExtratoPage({super.key});

  @override
  State<ExtratoPage> createState() => _ExtratoPageState();
}

class _ExtratoPageState extends State<ExtratoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderAppBar(
        title: 'EXTRATO',
      ),
      body: Center(
        child: Text("Conteúdo"),
      ),

    );
  }
}
