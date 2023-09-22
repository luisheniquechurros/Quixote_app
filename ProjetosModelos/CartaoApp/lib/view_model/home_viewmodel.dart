
//import 'package:exemplo_catalogo/views/detalhes_produto_page.dart';
//import 'package:exemplo_catalogo/views/carrinho_page.dart';
//import 'package:exemplo_catalogo/views/confirmacao_compra_page.dart';

import '../model/lancamentos.dart';

class HomeViewModel {

  final List<Lancamento> _lancamentos = [
    Lancamento(
      descricao: 'Produto 1',
      preco: 9.99,
      data: DateTime(2023, 08, 01)
    ),
    Lancamento(
        descricao: 'Produto 2',
        preco: 9.99,
        data: DateTime(2023, 08, 01)
    ),
    Lancamento(
        descricao: 'Produto 3',
        preco: 9.99,
        data: DateTime(2023, 08, 01)
    ),
  ];

  List<Lancamento> get lancamentos => _lancamentos;
}