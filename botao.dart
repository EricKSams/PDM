import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String title;
  final formKey;
  const Botao({super.key, required this.title, required this.formKey});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(
          width: 100,
          height: 50,
        ),
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState.validate() == '') {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Formulário válido')));
            }
          },
          child: Text(
            title,
            textScaleFactor: 1.4,
          ),
        ),
      ),
    );
  }
}
