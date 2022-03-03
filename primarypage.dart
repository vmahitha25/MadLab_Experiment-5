import 'package:flutter/material.dart';

class Primarypage extends StatelessWidget{
  const Primarypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Primary Screen"),
      backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.indigoAccent,
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("Primary Screen"),
          ),
        ),
    );
  }
}