import 'package:flutter/material.dart';
import 'package:prova2/models/users.dart';
import 'package:prova2/view/add_user.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  List<User> users = [];

  void _addUser(String nome, int idade){
    setState(() {
      users.add(User(nome, idade));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuarios'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index].nome),
            subtitle: Text('Idade ${users[index].idade}'),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (BuildContext context) {
              return AddUserDialog(_addUser);
            });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}