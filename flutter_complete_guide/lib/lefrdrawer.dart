import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Drawerleft extends StatelessWidget
{
  Drawerleft();

  _launchURLBrowser() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context)
  {
    return Container(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        //child: Text('Options'),
        child: UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.green), accountName: Text("Ameya Bodhankar", 
        style: TextStyle(fontSize: 12)),
        accountEmail: Text("ameyapb29@gmail.com"),
        currentAccountPictureSize: Size.square(50),
        currentAccountPicture: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 184, 219, 173),
        child: Text("A",style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 1, 6, 9)),
         )
        ), 
        )
        
      ),
      ListTile(
             leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              }
      ),
      ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
      ),
      ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Courses '),
              onTap: () {
                Navigator.pop(context);
              },
      ),
      ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(' Log Out '),
              onTap:
                (){_launchURLApp();},          
      
      ),
    ],
    ),
    color: Colors.white,
    );

  }
}