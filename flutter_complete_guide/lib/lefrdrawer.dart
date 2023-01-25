import 'dart:io';

import 'package:flutter/material.dart';

class Drawerleft extends StatelessWidget
{
  Drawerleft();
  @override
  Widget build(BuildContext context)
  {
    return Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Options'),
      ),
      ListTile(
        title: const Text('Profile'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Settings'),
        onTap: () {
          // Update the state of the app.‸
          // ...
        },
      ),
    ],
    )
    );

  }
}