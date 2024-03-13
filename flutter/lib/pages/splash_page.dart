import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _MyWidgetState();
}



class _MyWidgetState extends State<SplashPage> {

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(color: Colors.black,),),
    );
  }
}