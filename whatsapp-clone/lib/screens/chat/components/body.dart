import 'package:flutter/material.dart';
import 'package:whatsapp/demo_data.dart';

import '../../../constants.dart';
import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demoMessages.length,
              itemBuilder: (context, index) {
                var widget = Message(demoMessages[index]);

                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: widget,
                  );
                }

                return widget;
              },
            ),
          ),
        ),
        ChatInputField(updateState),
      ],
    );
  }

  void updateState() {
    setState(() {});
  }
}
