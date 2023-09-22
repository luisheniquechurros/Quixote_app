import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quixote_app/pagina_inicial.dart';

void main() {
  runApp(QuixoteApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class QuixoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Quixote App',
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    );
  }
}
