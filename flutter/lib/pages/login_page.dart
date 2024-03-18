import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 0),
            child: SvgPicture.asset(
              'assets/images/arcoiris.svg',
              width: 333,
              height: 152,
            ),
          ),
          Row(children: [Padding
          (padding: EdgeInsets.only(top: 179, left:131),
          child: Text('Ao se inscrever você está ',
           style: TextStyle(fontSize: 12),
           textAlign: TextAlign.justify),)
           ],
           ),
           Row(children: [Padding
          (padding: EdgeInsets.only(top: 189, left:112 ),
          child: Text('concordando em quebrar as regras  ',
           style: TextStyle(fontSize: 12),
           textAlign: TextAlign.justify),)
           ],
           ),
           Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(decoration: InputDecoration(hintText: 'Endereço de e-mail')),
                TextField(decoration: InputDecoration(hintText: 'Senha'), obscureText: true,),
                ElevatedButton(onPressed:() {}, child: Text('Login')),
              ],
            ),
           )
        ],
      ),
    );
  }
}
