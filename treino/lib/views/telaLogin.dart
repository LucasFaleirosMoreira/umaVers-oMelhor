import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  String? usuarioDigitado;
  String? senhaDigitada;
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              
              child: TextField(
                controller: usuarioController,
                decoration: InputDecoration(
                  labelText: 'USUÁRIO',
                  border: OutlineInputBorder()
                ),
                onChanged: (value) {
                  //função com o valor digitado como parametro, verificando se o usuario existe
                  usuarioDigitado = usuarioController.text;
                },
              )
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              width: 200,

              child: TextField(
                controller: senhaController,
                decoration: InputDecoration(
                  labelText: 'SENHA',
                  border: OutlineInputBorder()
                ),
                onChanged: (value){
                  //função para verificar se a senha corresponde ao usuario
                  senhaDigitada = senhaController.text;
                },
              )
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton(onPressed: (){
              //ao pressionar o botão chamar uma função para verificar se o retorno das duas funções anteriores
              //tem valores válidos e redirecionar o usuario para a tela principal
              Navigator.pushNamed(context, '/principal');
            }, child: Text('ENTRAR'))

          ],
        )
        ),
    );
  }
}