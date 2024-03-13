import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(padding: const EdgeInsets.only(top: 80, right: 38),
          child: SvgPicture.asset(
            'assets/images/A.svg',
            width: 500,
            height: 1090,
          ),
          ),
        ],
      ),
    );
  }
}

