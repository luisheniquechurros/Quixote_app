
import 'package:quixote_app/components/loading.dart';
import 'package:flutter/material.dart';

class NavegadorUtil {
  static final navegadorKey = GlobalKey<NavigatorState>();

  static Future<dynamic > openDialog ({required Widget dialog}) async{
    return showDialog(
      context: navegadorKey.currentState!.context,
       builder: (_) {
        return dialog;
       });
  }

  static Future<void> openLoading() async{
    return openDialog(dialog: const Loading());
  }

  static Future<dynamic> navigate(Widget page) async{
    return await navegadorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

static void navigateAndRemoveStack(Widget page) {
  navegadorKey.currentState?.pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
    (route) => false
  );
}

  static void pop ({dynamic result}) {
    navegadorKey.currentState?.pop(result);
  }
}