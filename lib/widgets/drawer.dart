import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  final imageurl =
      "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: const Text("vaibhav mishra "),
                  accountEmail: const Text("mishrvaibhav365@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageurl)),
                )),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "E-mail",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
