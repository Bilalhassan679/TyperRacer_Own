import 'package:flutter/material.dart';
import 'package:typerracerown/Widgets/customInputText.dart';

import '../Widgets/onTapButton.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({Key? key}) : super(key: key);

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: SizedBox(
            width: size.width * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Join Room!',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: size.height * 0.08),
                CustomInputText(
                    controller: _nameController,
                    hintText: "Enter Your Nickname"),
                SizedBox(
                  height: size.height * 0.05,
                ),
                CustomInputText(
                    controller: _gameIdController,
                    hintText: "Enter Your Game ID"),
                SizedBox(
                  height: size.height * 0.05,
                ),
                OnTapButton(text: 'Create', ontap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
