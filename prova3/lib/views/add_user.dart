import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddUserDialog extends StatelessWidget {
  final Function(String) addUser;

  AddUserDialog(this.addUser, {super.key});

  String nome = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(labelText: 'Nome'),
            onChanged: (value) {
              nome = value;
            },
          )
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: (){
            addUser(nome);
            Navigator.of(context).pop();
          }, 
          child: const Text('Adicionar')
        )
      ],
    );
  }
}