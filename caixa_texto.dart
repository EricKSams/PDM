import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  final String label;
  final bool pass;
  final TextEditingController? controller;
  const CaixaTexto(
      {super.key,
      required this.label,
      this.pass = false,
      required this.controller});

  const CaixaTexto.senha(
      {super.key,
      required this.label,
      this.pass = true,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: pass,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
