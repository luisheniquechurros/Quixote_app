import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});
  @override
  State <PaginaInicial> createState() => _PaginaInicialState();

}

 class _PaginaInicialState extends State<PaginaInicial> {

  List pages = [
    const PaginaInicial(),
  ];
  
  @override
  Widget build(BuildContext context) {
    // Obtém o tamanho da tela
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Seção superior da página
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Center(
                  // Logotipo usando SVG
                  child: SvgPicture.asset(
                    'assets/images/logu.svg',
                    width: 154,
                    height: 193,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 38),
                    // Título da aplicação
                    child: Text(
                      'Quixote na Biblio',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              // Primeiro bloco de informações do encontro
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 38, right: 22),
                child: Container(
                  width: 300.0,
                  height: 159.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 21),
                        // Imagem do encontro
                        child: SvgPicture.asset('assets/images/placeholder.svg',
                            width: 100, height: 159),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            // Nome do encontro
                            child: Text(
                              'Nome do encontro',
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            // Nome do autor(a)
                            child: Text(
                              'Nome do autor(a)',
                              style: TextStyle(fontSize: 9, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            // Data do encontro
                            child: Text(
                              'Data do encontro',
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 36),
                            // Barra de progresso
                            child: Text(
                              'Barra de progresso',
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Segunda seção de informações do encontro
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 34, left: 38),
                    // Título da aplicação (repetido)
                    child: Text(
                      'Quixote na Biblio',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 38, right: 22),
                child: Container(
                  width: 300.0,
                  height: 159.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 21),
                        // Imagem do encontro (repetido)
                        child: SvgPicture.asset('assets/images/placeholder.svg',
                            width: 100, height: 159),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            // Nome do encontro (repetido)
                            child: Text(
                              'Nome do encontro',
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            // Nome do autor(a) (repetido)
                            child: Text(
                              'Nome do autor(a)',
                              style: TextStyle(fontSize: 9, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            // Data do encontro (repetido)
                            child: Text(
                              'Data do encontro',
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 36),
                            // Barra de progresso (repetido)
                            child: Text(
                              'Barra de progresso',
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Barra de navegação inferior
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: Color(0xFFA8A8A8))),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20.0,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    // Ícone da página inicial
                    icon: Icon(Icons.home, color: Colors.black),
                    iconSize: 35,
                    onPressed: () {},
                  ),
                  IconButton(
                    // Ícone dos encontros anteriores
                    onPressed: () {},
                    iconSize: 35,
                    icon: Icon(
                      Icons.access_time_filled_rounded,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton(
                    // Ícone da conta do usuário

                    child: Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 60,
                    ),
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  IconButton(
                    // Ícone da agenda Quixote
                    onPressed: () {},
                    iconSize: 35,
                    icon: Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    // Ícone das configurações
                    onPressed: () {},
                    iconSize: 35,
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
