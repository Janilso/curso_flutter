import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessas",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pessoas 0",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("+1",
                    style: TextStyle(color: Colors.white, fontSize: 30.0)),
                onPressed: () {}, // Função a ser chamada
              ),
              FlatButton(
                child: Text("-1",
                    style: TextStyle(color: Colors.white, fontSize: 30.0)),
                onPressed: () {}, // Função a ser chamada
              ),
            ],
          ),
          Text("Pode entrar",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0)),
        ],
      )));
}
