import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quixote_app/pagina_inicial.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variáveis de controle
  bool isPasswordVisible = false; // Variável para controlar a visibilidade da senha
  bool isLoading = false; // Variável para indicar se o aplicativo está carregando

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const SizedBox(height: 20),
            // Texto 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Ao se inscrever você está',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            // Texto 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'concordando em quebrar as regras',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            // Formulário de login
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Campo de e-mail
                  TextFormField(
                    maxLength: 30,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: "Endereço de Email",
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Campo de senha
                  TextFormField(
                    maxLength: 12,
                    obscureText: !isPasswordVisible,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Senha",
                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Botão de login
                  ElevatedButton(
                    onPressed: () {
                      _handleLogin();
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(318, 45),
                      textStyle: const TextStyle(fontSize: 17),
                      backgroundColor: const Color(0xFF0386D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Login'),
                  ),
    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleLogin() async {
   
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PaginaInicial()),
    );

    setState(() {
      isLoading = false;
    });
  }
}
