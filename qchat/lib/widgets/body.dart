import 'package:flutter/material.dart';
import 'package:qchat/widgets/chat.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) => ChatCard(
                    chat: chatsData[index],
                  )),
        ),
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key key,
    this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
              ),
              if (chat.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.name,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  chat.lastMessage,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 13,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )),
          Text(
            chat.time,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
