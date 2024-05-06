import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final String? message;
  const Loading({
    Key? key,
    this.message = 'Aguarde...',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      backgroundColor: Colors.white,
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                message ?? 'Aguarde...',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          )),
    );
  }
}
