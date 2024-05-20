import 'package:flutter/material.dart';

import 'details_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(4, 24, 0, 0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Crab'),
              subtitle: Text(
                  'Crabs don\'t have a brain as part of their nervous system.'),
              onTap: () {
                // Navigate to the new screen with a custom transition animation.
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        StorySelectionScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Fish'),
              subtitle: Text('A fish can cough... really!'),
            ),
            ListTile(
              title: Text('Elephant'),
              subtitle: Text('An elephant is the largest mammal on land.'),
            ),
            ListTile(
              title: Text('Elephant'),
              subtitle: Text('An elephant is the largest mammal on land.'),
            ),
            ListTile(
              title: Text('Elephant'),
              subtitle: Text('An elephant is the largest mammal on land.'),
            ),
            ListTile(
              title: Text('Elephant'),
              subtitle: Text('An elephant is the largest mammal on land.'),
            ),
          ],
        ),
      ),
    );
  }
}
