import 'package:flutter/material.dart';
import 'package:login/componentes/botao.dart';
import 'package:login/componentes/caixa_texto.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final appTitle = 'Login Teste';
  final title = 'Página de Login';
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              const CaixaTexto.senha(
                label: 'Digite seu E-mail',
                pass: false,
              ),
              const CaixaTexto.senha(
                label: 'Digite sua senha',
              ),
              Botao(title: 'Seguir', formkey: _formkey),
            ],
          ),
        ),
      ),
    );
  }
}
