import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          Container(
            child: SvgPicture.asset('assets/images/fundo.svg'),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
           Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 0, left: 24),
                  child: SvgPicture.asset(
                    'assets/images/lampada.svg',
                    width: 57,
                    height: 170,
                  ),)
                ],
              ),
                Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 0, left: 315),
                  child: SvgPicture.asset(
                    'assets/images/lampada.svg',
                    width: 57,
                    height: 160,
                  ),)
                ],
              ),
                Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 0, left: 350),
                  child: SvgPicture.asset(
                    'assets/images/lampada.svg',
                    width: 57,
                    height: 180,
                  ),
                  )
                ],
              ),
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
                    padding: EdgeInsets.only(top: 80, left: 38),
                    // Título da aplicação
                    child: Text(
                      'Quixote na Biblio',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              // Primeiro bloco de informações do encontro
              Container(
                width: 300,
                height: 159,
                child: Stack(children: [
                  Positioned(
                    left: 0,
                    top: 35,
                    child: Container(
                      width: 300,
                      height: 123,
                      decoration: ShapeDecoration(
                        color: Color(0xCCF6F2F2),
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12)
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 30,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ]
                      ),
                    )),
                    Positioned(
                      left: 121,
                      top: 35,
                      child: SizedBox(
                        width: 119,
                        height: 12,
                        child: Text(
                          'Título do encontro',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                left: 121,
                top: 119,
                child: SizedBox(
                  width: 119,
                  height: 30,
                  child: Text(
                    'Encontro: --/--/--, --h\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 59,
                child: SizedBox(
                  width: 119,
                  height: 12,
                  child: Text(
                    'Autor da obra',
                    style: TextStyle(
                      color: Color(0xFF2575EE),
                      fontSize: 11,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 100,
                  height: 159,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 159,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 30,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 159,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 100,
                                  height: 159,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 3,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.04),
                                  child: Container(
                                    width: 176.65,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 95,
                                top: 2,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(2.08),
                                  child: Container(
                                    width: 175.51,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      
   Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 38),
                    // Título da aplicação
                    child: Text(
                      'Quixote na Biblio',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              // Primeiro bloco de informações do encontro
              Container(
                width: 300,
                height: 159,
                child: Stack(children: [
                  Positioned(
                    left: 0,
                    top: 35,
                    child: Container(
                      width: 300,
                      height: 123,
                      decoration: ShapeDecoration(
                        color: Color(0xCCF6F2F2),
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12)
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 30,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ]
                      ),
                    )),
                    Positioned(
                      left: 121,
                      top: 35,
                      child: SizedBox(
                        width: 119,
                        height: 12,
                        child: Text(
                          'Título do encontro',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                left: 121,
                top: 119,
                child: SizedBox(
                  width: 119,
                  height: 30,
                  child: Text(
                    'Encontro: --/--/--, --h\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 121,
                top: 59,
                child: SizedBox(
                  width: 119,
                  height: 12,
                  child: Text(
                    'Autor da obra',
                    style: TextStyle(
                      color: Color(0xFF2575EE),
                      fontSize: 11,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 100,
                  height: 159,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 159,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 30,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 159,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 100,
                                  height: 159,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 3,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.04),
                                  child: Container(
                                    width: 176.65,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 95,
                                top: 2,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(2.08),
                                  child: Container(
                                    width: 175.51,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
              height: 60,
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
                    iconSize: 28,
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    // Ícone da conta do usuário

                    child: Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 40,
                    ),
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  IconButton(
                    // Ícone das configurações
                    onPressed: () {},
                    iconSize: 28,
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
