import 'dart:math';

import 'package:animate_icons/animate_icons.dart';
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
  AnimateIconController? controller;
  bool expanded = true;
  Random random = Random();
  late TextStyle listTile;
  late List<Widget> chats;
  @override
  void initState() {
    controller = AnimateIconController();
    super.initState();
  }

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
      subtitle: Text(
        "Вчера, 21:41",
        style: listTile,
      ),
      trailing: AnimateIcons(
        duration: Duration(milliseconds: 600),
        startIcon: Icons.call,
        startIconColor: kPrimaryColor,
        endIcon: Icons.call,
        endIconColor: kPrimaryColor,
        controller: controller!,
        size: 25.0,
        onEndIconPress: () {
          expanded ? controller!.isStart() : controller!.isEnd();
          expanded = !expanded;
          return true;
        },
        onStartIconPress: () {
          expanded ? controller!.isStart() : controller!.isEnd();
          expanded = !expanded;
          return true;
        },
      ),
    );
  }
}
