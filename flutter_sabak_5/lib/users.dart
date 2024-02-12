import 'package:flutter/material.dart';
import 'package:flutter_sabak_5/user_data.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'data',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return ListTile(
              title: Text(user.aty),
              subtitle: Text('${user.kesibi} ${user.jash}jashta'),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(user.profilSurot),
              ),
              trailing: Icon(Icons.chevron_right),
            );
          }),
    );
  }
}
