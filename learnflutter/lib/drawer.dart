import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Sundram"),
            accountEmail: Text("Samjio2016@gmil.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars0.githubusercontent.com/u/39513887?s=460&u=cc35e83e6eebd05a18ccbf3c0ec15b27322b07f7&v=4"),
            ),
            //arrowColor: Colors.amber,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("Sundram Mishra"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
            ),
            title: Text("Email"),
            subtitle: Text("samjio2016@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
