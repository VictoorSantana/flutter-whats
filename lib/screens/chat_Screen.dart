import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

  //final String name;

  //ChatScreen(this.name);

  @override
  Widget build(BuildContext context) {
    final nome = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
                height: 45,
                width: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/usertest.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(nome),
            )
          ],
        ),
      ),
      body: Center(child: Text('Hello World')),
    );
  }
}
