import 'package:quixote_app/util/navegador_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quixote_app/pages/login_page.dart';
import 'package:quixote_app/pages/splash_page.dart';
import 'package:quixote_app/pagina_inicial.dart';

 main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(QuixoteApp());
  FlutterNativeSplash.remove();
}

class QuixoteApp extends StatelessWidget {
  const QuixoteApp ({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavegadorUtil.navegadorKey,
      home:  const SplashPage(),
    );
  }
}
