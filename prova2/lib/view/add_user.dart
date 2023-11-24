import 'package:flutter/material.dart';

class AddUserDialog extends StatelessWidget {
  final Function(String, int) addUser;

  AddUserDialog(this.addUser);

  @override
  Widget build(BuildContext context) {
    String nome = '';
    int idade = 0;


    return AlertDialog(
      title: Text('Adicionar Usuario'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Nome'),
            onChanged: (value) {
              nome = value;
            },
          )
        ]
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            addUser(nome, idade);
            Navigator.of(context).pop();
          }, 
          child: Text('Adicionar')
        )
      ],
    );
  }
}