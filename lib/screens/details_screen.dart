import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearningapp/data.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({required this.animal});
  final AnimalInfo animal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn"),
        backgroundColor: animal.color,
        
      ),
      body: Column(
        children: [
          
          Container(
            decoration: BoxDecoration(
              color: animal.color,
            ),
            child: GestureDetector(
              child: Hero(
                tag: animal.iconImage,
                child: Image(
                  image :  AssetImage(animal.iconImage),
                 )
                ),
                
             
              onTap: (){
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
