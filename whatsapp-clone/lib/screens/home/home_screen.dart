import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home/components/calls.dart';
import 'package:whatsapp/screens/home/components/chats.dart';
import 'package:whatsapp/screens/home/components/statuses.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = ['Настройки'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'ЧАТЫ',),
                Tab(text: 'СТАТУС',),
                Tab(text: 'ЗВОНКИ',),
              ],
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              unselectedLabelStyle: TextStyle(fontSize: 14),
            ),
            title: const Text('WhatsApp'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              PopupMenuButton(
                onSelected: (_) {
                  Navigator.pushNamed(context, "/settings");
                },
                itemBuilder: (context) {
                  return items.map((e) => PopupMenuItem(
                    value: e,
                    child: Text(e),
                  )).toList();
                },
              )
            ],
          ),
          body: const TabBarView(
            children: [
              Chats(),
              Statuses(),
              Calls()
            ],
          ),
        ),
      ),
    );
  }
}
