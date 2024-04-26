import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './admin_screen.dart';
import './services/usermanagement.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Name'),
              accountEmail: new Text('email@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),

              ),
              new ListTile(
                title: new Text('Broadcast Screen'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => 
                  new AdminScreen()));
                },
              ),
              new ListTile(
                title: new Text('Logout'),
                onTap: (){
                  UserManagement().singOut();
                },
              )
          ],
        ),
      ),
      body: Center(
        child: Text('Dashboard'),
        
      ),
    );
  }
}