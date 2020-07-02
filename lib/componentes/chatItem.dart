import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String name;
  final String lastMsg;
  final double id;
  final String imgPath;

  ChatItem(
      {@required this.id,
      @required this.name,
      @required this.lastMsg,
      @required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            height: 55,
            width: 55,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(name,
              style: TextStyle(
                fontSize: 18,
              )),
          subtitle: Text(
            lastMsg,
            style: TextStyle(
              fontSize: 17,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Divider()
      ],
    );
  }
}
