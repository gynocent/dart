import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/demo_data.dart';
import 'package:whatsapp/models/chat_message.dart';
import 'package:whatsapp/models/theme.dart';
import 'package:whatsapp/screens/chat/chat_screen.dart';
import 'package:whatsapp/screens/chat/components/body.dart';

import '../../../constants.dart';
import '../../../theme.dart';

class ChatInputField extends StatefulWidget {
  final Function() updateState;

  const ChatInputField(this.updateState, {Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var blackOrWhiteColor = Provider.of<ThemeModel>(context).blackOrWhiteColor;
      var listTile = Provider.of<ThemeModel>(context).listTile;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.25, vertical: kDefaultPadding * 0.25),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 0.60,
              ),
              decoration: BoxDecoration(
                color: Provider.of<ThemeModel>(context).isBlackMode ? const Color(0xff1F2C34) : Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(Icons.sentiment_satisfied_alt_outlined, color: blackOrWhiteColor,),
                  const SizedBox(width: kDefaultPadding / 2),
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        hintText: "Сообщение",
                        border: InputBorder.none,
                        hintStyle: listTile
                      ),
                      style: listTile,
                    ),
                  ),
                  Icon(Icons.attach_file, color: blackOrWhiteColor),
                  const SizedBox(width: kDefaultPadding / 2),
                  Icon(Icons.camera_alt, color: blackOrWhiteColor),
                ],
              ),
            ),
          ),
          const SizedBox(width: kDefaultPadding / 3),
          CircleAvatar(
            backgroundColor: const Color(0xff00A783),
            child: IconButton(icon: const Icon(Icons.send, size: 20, color: Colors.white,), onPressed: _sendMessage),
          )
        ],
      ),
    );
  }

  void _sendMessage() {
    if (messageController.text.isNotEmpty) {
      demoMessages.add(ChatMessage(text: messageController.text, isSender: true));
      messageController.text = "";
      widget.updateState();
    }
  }
}