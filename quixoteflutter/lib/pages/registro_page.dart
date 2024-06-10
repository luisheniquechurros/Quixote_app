import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quixote_app/pagina_inicial.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  bool isPasswordVisible = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 0),
              child: SvgPicture.asset(
                'assets/images/arcoiris.svg',
                width: 333,
                height: 152,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Inscreva-se para começar',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    maxLength: 30,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: "Nome completo",
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  TextFormField(
                    maxLength: 30,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: "Numero de telefone",
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  TextFormField(
                    maxLength: 30,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: "Nome de usuário",
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
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
                  TextFormField(
                    maxLength: 12,
                    obscureText: !isPasswordVisible,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Confirmar a senha",
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
                  ElevatedButton(
                    onPressed: () {
                      // registrar
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
                    child: const Text('Registrar'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Já tem uma conta?",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Volta para a página de login
                  },
                  child: const Text(
                    "Faça login",
                    style: TextStyle(
                      color: Colors.blue, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}