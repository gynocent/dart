import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/demo_data.dart';
import 'package:whatsapp/models/theme.dart';
import 'package:whatsapp/theme.dart';

class Statuses extends StatefulWidget {
  const Statuses({Key? key}) : super(key: key);

  @override
  State<Statuses> createState() => _StatusesState();
}

class _StatusesState extends State<Statuses> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    var listTile = Provider.of<ThemeModel>(context).listTile;

    return ListView(
      children: [
        ListTile(
          onTap: () {},
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(demoProfile.image),
          ),
          title: Text("Мой статус", style: listTile,),
          subtitle: Text("Нажмите, чтобы добавить новый статус", style: listTile,),
        )
      ],
    );
  }
}
