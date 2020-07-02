import 'package:flutter/material.dart';
import 'package:layAprendendo/componentes/listChat.dart';

import './screens/chat_Screen.dart';

import './utils/routes.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'CONVERSAS',),
                Tab(text: 'CONTATOS'),                
              ],
            ),
            title: Text('Gestor Messenger'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => {},
              )
            ],
          ),
          body: TabBarView(
            children: [
              ListChats(),
              Icon(Icons.directions_transit),              
            ],
          ),
        ),
      ),
      routes: {
        Routes.CHAT: (ctx) => ChatScreen()
      },
    );
  }
}
