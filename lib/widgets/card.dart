import 'package:flutter/material.dart';
import 'package:kidslearningapp/data.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key, required this.card, required this.onPressed});
  final AnimalInfo card;
  final void onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        height: 230,
        child: Stack(children: [
          Positioned(
              left: 40,
              child: Container(
                decoration: BoxDecoration(
                    color: card.color,
                    borderRadius: BorderRadius.circular(10.0)),
                constraints: BoxConstraints(maxHeight: 180, maxWidth: 300),
              )),
          Positioned(
            top: 15.0,
            child: Hero(
              tag: card.name,
              child: Image.asset(
                card.iconImage,
                width: 150.0,
                height: 150.0,
              ),
            ),
          ),
          Positioned(
            top: 25.0,
            left: 160.0,
            child: Text(
              card.name,
              style: TextStyle(
                color: Colors.grey[50],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 25.0,
            left: 160.0,
            child: Container(
              width: 200,
              height: 200,
              child: Opacity(
                opacity: 0.8,
                child: Center(
                  child: Text(
                    card.description,
                    style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
