import 'package:flutter/material.dart';
import 'package:whatsapp/animations_tween/animate_route.dart';
import 'package:whatsapp/screens/home/components/calls.dart';
import 'package:whatsapp/screens/home/components/chats.dart';
import 'package:whatsapp/screens/home/components/statuses.dart';
import 'package:whatsapp/screens/settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
      value: 1,
    );

    _tabController = TabController(
      length: 3,
      vsync: this,
    )..addListener(() {
        if (_tabController.indexIsChanging) {
          setState(() =>
              _controller.animateTo(3, duration: Duration(milliseconds: 700)));
        }
      });
  }

  final items = ['Настройки'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaleTransition(
        scale: _controller,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'ЧАТЫ',
                ),
                Tab(
                  text: 'СТАТУС',
                ),
                Tab(
                  text: 'ЗВОНКИ',
                ),
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
                  Navigator.push(
                      context,
                      AnimationsRoute(
                          routeName: 'settings', page: SettingsScreen()));
                },
                itemBuilder: (context) {
                  return items
                      .map((e) => PopupMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList();
                },
              )
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children: [Chats(), Statuses(), Calls()],
          ),
        ),
      ),
    );
  }
}
