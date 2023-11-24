import 'package:flutter/material.dart';
import 'package:prova/model/users.dart';
import 'add_user_dialog.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> users = []; // Lista de usuários

  // Método para adicionar um novo usuário
  void _addUser(String name, int age) {
    setState(() {
      users.add(User(name, age));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index].name),
            subtitle: Text('Idade: ${users[index].age}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddUserDialog(_addUser);
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
