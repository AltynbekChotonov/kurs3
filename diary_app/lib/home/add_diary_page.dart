import 'package:flutter/material.dart';

class AddDiatyPage extends StatelessWidget {
  const AddDiatyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('AddDiatyPage'),
        ),
        body: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'title'),
              )
            ],
          ),
        ));
  }
}
