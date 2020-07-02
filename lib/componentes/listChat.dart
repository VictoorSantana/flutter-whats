import 'package:flutter/material.dart';
import 'package:layAprendendo/bloc/chatBloc.dart';


class ListChats extends StatelessWidget {
  final _bloc = ChatBloc();

  // void _showScreenChat(BuildContext context) {
  //   Navigator.of(context).pushNamed('/chat', arguments: 'Amanda Seyfried');
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StreamBuilder(
            stream: _bloc.output,
            builder: (context, snapshot) {
              return Text("${ snapshot.data }");
            },
          )
        ],
      ),
    );
  }
}

/*
ListView.builder(
            itemCount: 4,
            itemBuilder: (ctx, index) {
              return InkWell(
                  child: ChatItem(
                    id: 1,
                    name: 'Amanda Seyfried',
                    lastMsg: 'Oi, como você está?',
                    imgPath: 'assets/images/usertest.png',
                  ),
                  onTap: () => _showScreenChat(context));
            },
          ),
*/
