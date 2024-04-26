import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _MyWidgetState();
}



class _MyWidgetState extends State<SplashPage> {

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {fluxoinitializacao();});
  }

  Future<void> fluxoinitializacao() async {
    (const LoginPage());
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SvgPicture.asset('assets/images/splashlogo.svg'),)
    );
  }
}