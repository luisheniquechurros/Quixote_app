import 'package:flutter/material.dart';

import '../components/header.dart';

class FechamentoPage extends StatefulWidget {
  const FechamentoPage({super.key});

  @override
  State<FechamentoPage> createState() => _FechamentoPageState();
}

class _FechamentoPageState extends State<FechamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderAppBar(
        title: 'FECHAMENTO',
      ),
      body: Center(
        child: Text("Conteúdo"),
      ),

    );
  }
}
