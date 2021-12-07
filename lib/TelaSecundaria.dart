import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {

  String valor;

  TelaSecundaria(this.valor);

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text("Ola usuario: ${widget.valor}"),
            RaisedButton(
              child: Text("Ir para tela Inicial"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.pushNamed(context, "/");
              },
            )
          ],
        ),
      ),
    );
  }
}
