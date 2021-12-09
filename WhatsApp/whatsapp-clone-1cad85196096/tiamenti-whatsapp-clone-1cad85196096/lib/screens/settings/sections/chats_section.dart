import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/demo_data.dart';
import 'package:whatsapp/models/theme.dart';
import 'package:whatsapp/theme.dart';

class ChatsSection extends StatefulWidget {
  const ChatsSection({Key? key}) : super(key: key);

  @override
  State<ChatsSection> createState() => _ChatsSectionState();
}

class _ChatsSectionState extends State<ChatsSection> {
  late bool _isBlackMode;

  @override
  Widget build(BuildContext context) {
    _isBlackMode = Provider.of<ThemeModel>(context).isBlackMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Чаты"),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.brightness_4, color: kPrimaryColor,),
            title: Text("Тёмная тема", style: Provider.of<ThemeModel>(context).listTile,),
            // subtitle: Text("Измениение темы приложе", style: kListTile,),
            trailing: Switch(
              value: _isBlackMode,
              onChanged: (value) {
                setState(() {
                  _isBlackMode = value;
                });
                Provider.of<ThemeModel>(context, listen: false).change(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}