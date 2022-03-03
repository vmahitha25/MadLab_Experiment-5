import 'package:flutter/material.dart';

class Mailpage extends StatelessWidget{
  const Mailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mail Screen"),
            backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.indigoAccent,
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("Mail Screen"),
          ),
        ),
    );
  }
}