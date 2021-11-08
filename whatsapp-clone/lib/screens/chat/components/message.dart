import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/models/chat_message.dart';
import 'package:whatsapp/models/theme.dart';

import '../../../constants.dart';
import '../../../theme.dart';

class Message extends StatelessWidget {
  final ChatMessage message;

  const Message(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarkMode = Provider.of<ThemeModel>(context).isBlackMode;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.15),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 0.75,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: message.isSender ?
              (isDarkMode ? const Color(0xff005D4B) : const Color(0xffE6FEDA)) :
              (isDarkMode ? const Color(0xff1F2C34) : Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(message.text, style: Provider.of<ThemeModel>(context).listTile,),
          )
        ],
      ),
    );
  }
}