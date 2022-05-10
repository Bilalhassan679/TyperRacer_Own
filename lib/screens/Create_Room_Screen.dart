import 'package:flutter/material.dart';
import 'package:typerracerown/Widgets/customInputText.dart';
import 'package:typerracerown/Widgets/onTapButton.dart';

class CreateRoomScreen extends StatefulWidget {
  CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
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
                  'Create Room!',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: size.height * 0.08),
                CustomInputText(
                    controller: _nameController,
                    hintText: "Enter Your Nickname"),
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
