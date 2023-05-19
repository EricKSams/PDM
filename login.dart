import 'package:flutter/material.dart';
import 'package:flashnow/componentes/botao.dart';
import 'package:flashnow/componentes/caixadetexto.dart';
import 'package:flashnow/app.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              CaixaTexto.senha(
                label: "Digite seu E-mail",
                pass: false,
                controller: emailController,
              ),
              CaixaTexto.senha(
                label: "Digite sua senha",
                controller: senhaController,
              ),
              Botao(title: "Entrar", formKey: _formkey),
              ElevatedButton(
                  onPressed: () {}, child: Text('Esqueci minha senha')),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Cadastre-se')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
