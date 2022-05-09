import 'package:flutter/material.dart';

import '../Reusable_Widgets/onTapButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
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
                OnTapButton(text: 'Create', isHome: true, ontap: () {}),
                OnTapButton(text: 'Join', isHome: true, ontap: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
