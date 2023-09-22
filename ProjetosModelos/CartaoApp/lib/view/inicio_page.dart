import 'package:cartao_app/components/header.dart';
import 'package:cartao_app/view_model/home_viewmodel.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final HomeViewModel viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderAppBar(
        title: 'INÍCIO',
      ),
      body: Center(
        child: ListView.builder(
          itemCount: viewModel.lancamentos.length,
          itemBuilder: (context, index) {
            final item = viewModel.lancamentos[index];
            return ListTile(
              //leading: Image.network(lancamentos),
              title: Text(item.descricao),
              subtitle: Text(item.data.toString()),
              trailing: Text('R\$ ${item.preco.toStringAsFixed(2)}'),
            );
          },
        ),
      ),
    );
  }
}
