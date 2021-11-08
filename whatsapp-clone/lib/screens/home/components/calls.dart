import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/models/theme.dart';
import 'package:whatsapp/theme.dart';

import '../../../demo_data.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
      onTap: () {},
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(image),
      ),
      title: Text(name, style: listTile),
      subtitle: Text("Вчера, 21:41", style: listTile,),
      trailing: IconButton(icon: const Icon(Icons.call, color: kPrimaryColor,), onPressed: () {}),
    );
  }
}
