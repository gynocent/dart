import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/screens/chat/chat_screen.dart';
import 'package:whatsapp/screens/home/home_screen.dart';
import 'package:whatsapp/screens/settings/sections/chats_section.dart';
import 'package:whatsapp/screens/settings/settings_screen.dart';
import 'package:whatsapp/theme.dart';

import 'models/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeModel>(context).isBlackMode ? themeDataDark() : themeDataLight(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/chat': (context) => const ChatScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/settings/chats': (context) => const ChatsSection(),
      },
    );
  }
}
