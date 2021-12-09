import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/demo_data.dart';
import 'package:whatsapp/models/theme.dart';
import 'package:whatsapp/animations_tween/animate_route.dart';

import 'package:whatsapp/screens/settings/sections/chats_section.dart';
import 'package:whatsapp/theme.dart';

import '../../constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  late TextStyle listTile;
  bool expanded = true;
  AnimationController? controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    listTile = Provider.of<ThemeModel>(context).listTile;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Настройки"),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(demoProfile.image),
            ),
            title: Text(
              demoProfile.name,
              style: listTile,
            ),
            subtitle: Text(
              "Привет, я использую WhatsApp!",
              style: listTile,
            ),
            trailing: IconButton(
              icon: AnimatedIcon(
                icon: AnimatedIcons.list_view,
                progress: controller!,
                color: kPrimaryColor,
              ),
              onPressed: () {
                setState(() {
                  controller!.repeat();
                  expanded = !expanded;
                });
              },
            ),
          ),
          const Divider(),
          _listTile(Icons.vpn_key, "Аккаунт",
              "Конфедециальность, безопасность, смена номера"),
          _listTile(Icons.chat, "Чаты", "Темы, обои, история чатов"),
          _listTile(Icons.notifications, "Уведомления",
              "Звуки сообщений, групп и звонков"),
        ],
      ),
    );
  }

  Widget _listTile(IconData icon, String name, String description) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            AnimationsRoute(routeName: 'settings/chats', page: ChatsSection()));
      },
      leading: Icon(
        icon,
        color: kPrimaryColor,
      ),
      title: Text(
        name,
        style: listTile,
      ),
      subtitle: Text(
        description,
        style: listTile,
      ),
      isThreeLine: false,
    );
  }
}
