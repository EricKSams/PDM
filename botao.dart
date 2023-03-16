import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String title;
  const Botao({super.key, required this.title, required this.formkey});
  final formkey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(height: 50, width: 250),
        child: ElevatedButton(
          onPressed: () {
            if (formkey.currentState.validate() == '') {}
          },
          child: Text(
            title,
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}
