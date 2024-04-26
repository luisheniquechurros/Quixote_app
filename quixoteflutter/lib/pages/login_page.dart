// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override //@override = sobreescreve um método()
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variáveis de controle
  bool isPassowordVisible = false; // Variável para controlar a visibilidade da senha
  bool isLoading = false; // Variável para indicar se o aplicativo está carregando
  String versaoApp = ''; // Variável para armazenar a versão do aplicativo

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold( // implementa o layou básico
    backgroundColor: Colors.white,  //define a cor de fundo
      body: Stack( //  o Stack é um widget que permite colocar um widget sobre o outro
        children: [
          // Imagem da mancha do entre
          Padding( // Padding é um widget que permite colocar um widget dentro de um espaço
            padding: const EdgeInsets.only(top: 18, left: 0), // define o espaço que o widget vai ocupar
            child: SvgPicture.asset(
              'assets/images/arcoiris.svg',
              width: 333,
              height: 152,
            ),
          ),
          // Texto 1
          Row(children: [ // Row é um widget que permite colocar um widget um do lado do outro
            Padding(
              padding: EdgeInsets.only(top: 179, left: 116),
              child: Text(
                'Ao se inscrever você está ',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            )
          ]),
          // Texto 2
          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 195, left: 103),
              child: Text(
                'concordando em quebrar as regras  ',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            )
          ]),
          // Formulário de login
          Container( // Container é um widget que permite colocar um widget dentro de um container
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Campo de e-mail
                TextFormField( // TextFormField é um widget que permite criar um campo de formulário
                  maxLength: 30,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    hintText: "Endereço de Email",
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
                // Campo de senha
                TextFormField(
                  maxLength: 12,
                  obscureText: !isPassowordVisible, // Usando a variável para controlar a visibilidade da senha
                  style: const TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Senha",
                    suffixIcon: IconButton(
                      icon: isPassowordVisible
                          ? const Icon(Icons.visibility)  // a partir do pubspec.yaml se importa o pacote material_design_icons_flutter
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          isPassowordVisible = !isPassowordVisible;
                        });
                      },
                    ),
                  ),
                ),
                // Botão de login
                ElevatedButton( // Usando o ElevatedButton para criar um botão com estilo mais moderno
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(318, 45),
                    textStyle: TextStyle(fontSize: 17),
                    backgroundColor: const Color(0xFF0386D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          )
        ],
      )

    );
  }
}
