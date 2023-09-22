import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Lógica de autenticação aqui (pode ser implementada posteriormente com integração a um serviço de autenticação)
    print('Usuário: $username\nSenha: $password');

    Navigator.of(context).pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: Column(
          children: [
            Container(
              height: 250,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xBB449C65), Color(0xFF103224)],
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 24.0, right: 16.0, bottom: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: _usernameController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Nome de Usuário',
                            helperStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                            
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: _passwordController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Senha',
                            helperStyle: TextStyle(color: Colors.white),
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          obscureText: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24, top: 24),
                          child: ElevatedButton(
                            onPressed: _handleLogin,
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.lightGreen,
                              // Cor do texto do botão
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15), // Borda arredondada
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Acessar', style: TextStyle(fontSize: 20),),
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo_ninebit_white.png',
                          height: 40,
                        ),
                        const SizedBox(height: 24),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Versão 1.0v",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
