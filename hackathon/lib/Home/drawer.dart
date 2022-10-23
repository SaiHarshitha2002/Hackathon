import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class dropdown extends StatelessWidget {
  const dropdown({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const String Url="https://www.google.com/url?sa=i&url=https%3A%2F%2Fdepositphotos.com%2F179308454%2Fstock-illustration-unknown-person-silhouette-glasses-profile.html&psig=AOvVaw1d55XCQGNzwIfLMPpknK_B&ust=1666566490292000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCKDxo5D69PoCFQAAAAAdAAAAABAE";
    return Drawer(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: ListView(
          children: const [
            DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            accountName: Text("Akhil"), 
            accountEmail: Text("Akhil.gmail.com"),
            currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(Url),
            ),
            )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.blue,
            ) ,
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.blue,
            ) ,
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.location_circle,
              color: Colors.blue,
            ) ,
            title: Text(
              "Your Location",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.blue,
            ) ,
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.power,
              color: Colors.blue,
            ) ,
            title: Text(
              "Logout",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          )
          ],

        ),
      ),
    );
  }
}