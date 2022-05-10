import 'package:flutter/material.dart';

import '../Widgets/onTapButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Container(
              color: Colors.black54,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create/Join a group to play!',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: size.height * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OnTapButton(
                          text: 'Create',
                          isHome: true,
                          ontap: () =>
                              Navigator.pushNamed(context, '/create-room')),
                      OnTapButton(
                          text: 'Join',
                          isHome: true,
                          ontap: () =>
                              Navigator.pushNamed(context, '/join-room')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
