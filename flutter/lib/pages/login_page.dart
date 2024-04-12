import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Imagem da mancha do entre
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 0),
            child: SvgPicture.asset(
              'assets/images/arcoiris.svg',
              width: 333,
              height: 152,
            ),
          ),
          // Texto 1
          Row(children: [
            Padding(
              padding: EdgeInsets.only(top: 179, left: 116),
              child: Text(
                'Ao se inscrever você está ',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            )
          ]),
          // Texto 1
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
          Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Campo de e-mail
                TextFormField(
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
                          ? const Icon(Icons.visibility)
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
                ElevatedButton(
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
      ),
    );
  }
}
