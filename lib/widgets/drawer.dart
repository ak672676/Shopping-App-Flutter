import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://www.eui.eu/web-production/code/assets/img/default-user-dark.jpg";
    return new Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Amit Kumar"),
                  accountEmail: Text("akumar672676@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  margin: EdgeInsets.zero,
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Mail Me",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            )
          ],
        ),
      ),
    );
  }
}
