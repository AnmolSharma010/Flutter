import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Widget mydrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Anmol Sharma"),
          accountEmail: Text("anmolsharma@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: Text(
              "A",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ListTile(
          onTap: (){
            
          },
          leading: Icon(Ionicons.list,
          ),
          title: Text("My Orders",
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_sharp,
          ),
        ),
      ],
    ),
  );
}
