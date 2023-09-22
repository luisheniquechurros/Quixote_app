import 'package:cartao_app/view/sair_page.dart';
import 'package:cartao_app/view/cartao_page.dart';
import 'package:cartao_app/view/extratro_page.dart';
import 'package:cartao_app/view/fechamento_page.dart';
import 'package:cartao_app/view/inicio_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    InicioPage(),
    ExtratoPage(),
    CartaoPage(),
    FechamentoPage(),
    SairPage(),
  ];

  int currentIndex = 0;
  void  onTap(int index){
    setState(() {

      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.shifting,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        iconSize: 30,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Color(0xFF103224)),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: "Extrato", backgroundColor: Color(0xFF103224)),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Cartão", backgroundColor: Color(0xFF103224)),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Fechamento", backgroundColor: Color(0xFF103224)),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Sair", backgroundColor: Color(0xFF103224)),
        ],
      ),
    );
  }
}