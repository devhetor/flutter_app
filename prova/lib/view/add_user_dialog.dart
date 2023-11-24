import 'package:flutter/material.dart';

class AddUserDialog extends StatelessWidget {
  final Function(String, int) addUser;

  AddUserDialog(this.addUser);

  @override
  Widget build(BuildContext context) {
    String name = '';
    int age = 0;

    return AlertDialog(
      title: Text('Adicionar Usuário'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Nome'),
            onChanged: (value) {
              name = value;
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Idade'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              age = int.tryParse(value)!;
            },
          ),
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            addUser(name, age);
            Navigator.of(context).pop();
          },
          child: Text('Adicionar'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancelar'),
        ),
      ],
    );
  }
}
