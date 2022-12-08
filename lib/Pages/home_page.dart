import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_page/widget/mydrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(Icons.person),
          title: Text("person"),
          subtitle: Text("sub title"),
          trailing: Icon(Icons.card_travel),
        ),
      ]),
      drawer: myDrawer(),
    );
  }
}
