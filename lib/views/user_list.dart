import 'package:flutter/material.dart';
import 'package:fluuter_crud/components/user_tile.dart';
import 'package:fluuter_crud/models/user.dart';
import 'package:fluuter_crud/provider/users.dart';
import 'package:fluuter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuários.'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
              icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        // itemBuilder: (n, i) => UserTile(users.all.elementAt(i)),
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
