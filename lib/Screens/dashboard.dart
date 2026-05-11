import 'package:assignment/Screens/login.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final subjects = ["Mobile App Development", "Software Re-engineering", "MIS"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Column(
        children: [
          CircleAvatar(radius: 40),
          Text("Welcome User"),
          Expanded(
            child: ListView.builder(
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(subjects[index]),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/detail',
                      arguments: subjects[index],
                    );
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            child: Text("Logout"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
          )
        ],
      ),
    );
  }
}