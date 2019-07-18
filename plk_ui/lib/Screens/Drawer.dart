import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      elevation: 4.0,
      child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(
              "pushkal.175@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
            accountName: Text(
              "Pushkal",
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Text("P"),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/electronics.jpg"),
                    fit: BoxFit.fill)),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/home");
            },
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text("Home"),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/sellItem");
            },
            leading: Icon(Icons.inbox, color: Colors.cyan),
            title: Text("Sell Item"),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/sellItem");
            },
            leading: Icon(Icons.settings, color: Colors.red),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/login");
            },
            leading: Icon(Icons.exit_to_app, color: Colors.tealAccent),
            title: Text("Logout"),
          )
        ],
      ),
    );
  }
}
