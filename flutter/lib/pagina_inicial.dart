import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Center(
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
                child: Text(
                  'Quixote na Biblio',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
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
                    child: SvgPicture.asset('assets/images/placeholder.svg',
                        width: 100, height: 159),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          'Nome do encontro',
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Nome do autor(a)',
                          style: TextStyle(fontSize: 9, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'Data do encontro',
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 36),
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 34, left: 38),
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
                    child: SvgPicture.asset('assets/images/placeholder.svg',
                        width: 100, height: 159),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          'Nome do encontro',
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Nome do autor(a)',
                          style: TextStyle(fontSize: 9, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'Data do encontro',
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 36),
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
    );
  }
}
