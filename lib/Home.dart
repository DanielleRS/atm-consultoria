import 'package:flutter/material.dart';

import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaEmpresa.dart';
import 'TelaServico.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _openCompany() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaEmpresa()
        )
    );
  }

  void _openService() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaServico()
        )
    );
  }

  void _openClient() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaCliente()
        )
    );
  }

  void _openContact() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaContato()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openCompany,
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _openService,
                    child: Image.asset("images/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _openClient,
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _openContact,
                    child: Image.asset("images/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
