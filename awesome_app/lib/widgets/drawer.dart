import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Welton Leite"),
            accountEmail: Text("example@test.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80")),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Welton Leite"),
            subtitle: Text("Human Coder"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Email"),
            subtitle: Text("example@test.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
