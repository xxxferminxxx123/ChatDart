import 'package:flutter/material.dart';

class CustomRegister extends StatelessWidget {
  const CustomRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              FlutterLogo(size: 500),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
