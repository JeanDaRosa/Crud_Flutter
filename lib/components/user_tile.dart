import 'package:flutter/material.dart';
import 'package:fluuter_crud/models/user.dart';
import 'package:fluuter_crud/routes/app_routes.dart';

class UserTile extends StatelessWidget {
  // const UserTile({Key? key}) : super(key: key);
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                    arguments: user,
                  );
                },
                color: Colors.blue[700],
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
                color: Colors.red[600],
              )
            ],
          ),
        ));
  }
}
