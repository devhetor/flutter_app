import 'package:flutter/material.dart';
import 'package:prova3/model/users.dart';
import 'package:prova3/views/add_user.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  List<User> users = [];

  void _addUser(String nome){
    setState(() {
      users.add(User(nome));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuarios'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index].nome),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (BuildContext context) {
              return AddUserDialog(_addUser);
            }
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}