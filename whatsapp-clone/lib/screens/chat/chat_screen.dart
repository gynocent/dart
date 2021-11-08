import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat/components/body.dart';

import '../../constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Row(
          children: [
            const CircleAvatar(backgroundImage: AssetImage('assets/images/demo/chats/seth-doyle-BZ2PNGD5Emw.jpg'),),
            const SizedBox(width: kDefaultPadding * 0.50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Ульяна Филатова",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "был(-а) сегодня в 13:26",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.local_phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
    );
  }
}
