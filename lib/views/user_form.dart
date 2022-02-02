import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  // const UserForm({Key? key}) : super(key: key);

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de usuário.'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _form.currentState.save();
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                onSaved: (value){
                  print(value)
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Avatar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
