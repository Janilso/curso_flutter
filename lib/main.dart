import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _info = "Pode Entrar";
  void _aumentaPessoa(int delta) {
    setState(() {
      _pessoas += delta;
      if(_pessoas < 0) {
        _info = "Mundo invertido?!";
      } else if(_pessoas <= 10){
        _info = "Pode Entrar!";
      } else{
        _info = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "imagens/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1100.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas $_pessoas",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            decoration: TextDecoration.none)),
                    onPressed: () {
                      _aumentaPessoa(1);
                    }, // Função a ser chamada
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                    onPressed: () {
                      _aumentaPessoa(-1);
                    }, // Função a ser chamada
                  ),
                ),
              ],
            ),
            Text("$_info",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0,
                    decoration: TextDecoration.none)),
          ],
        )
      ],
    );
  }
}
