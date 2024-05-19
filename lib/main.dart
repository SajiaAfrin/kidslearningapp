import 'package:flutter/material.dart';
import 'package:kidslearningapp/card.dart';

import 'details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView(
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
                      DetailScreen(),
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
        ],
      ),
    );
  }
}
