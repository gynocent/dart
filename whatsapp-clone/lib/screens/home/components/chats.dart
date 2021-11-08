import 'dart:math';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/demo_data.dart';
import 'package:whatsapp/models/theme.dart';
import 'package:whatsapp/screens/chat/chat_screen.dart';

import '../../../theme.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  Random random = Random();
  late TextStyle listTile;
  late List<Widget> chats;

  @override
  Widget build(BuildContext context) {
    listTile = Provider.of<ThemeModel>(context).listTile;

    chats = [];
    demoProfiles.forEach((element) {
      chats.add(_listTile(element.name, element.image));
    });

    return ListView(
      children: chats,
    );
  }

  Widget _listTile(String name, String image) {
    return ListTile(
        onTap: () {
          Navigator.push(context, PageTransition(child: const ChatScreen(), type: PageTransitionType.rightToLeft));
        },
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        title: Text(name, style: listTile,),
        subtitle: Text("Lorem ipsum dolor sit amet, co...", style: listTile,),
        trailing: Text("${_time(23)}:${_time(59)}", style: const TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),)
    );
  }

  String _time(int max) {
    var number = random.nextInt(max).toString();
    return number.length > 1 ? number : "0" + number;
  }
}
