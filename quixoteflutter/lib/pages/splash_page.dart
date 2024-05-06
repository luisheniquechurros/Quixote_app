import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_page.dart';
import 'package:quixote_app/util/navegador_util.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}



class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {fluxoinitializacao();});
  }

  Future<void> fluxoinitializacao() async {
    NavegadorUtil.navigateAndRemoveStack(const LoginPage());
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: SvgPicture.asset('assets/images/splashlogo.svg', height: 150.0,),)
    );
  }
}