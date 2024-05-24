import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearningapp/data.dart';
import 'package:kidslearningapp/screens/details_screen.dart';
import 'package:kidslearningapp/widgets/card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<AnimalInfo> card = [] ;
  @override
  void initState (){
    card= animallist;
    super.initState();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: ListView.builder(
          shrinkWrap: true, 
          padding: EdgeInsets.all(5.0),
          itemCount: card.length,
          itemBuilder: (
            BuildContext context, int index)=> CardScreen(
              card: card[index],
              onPressed: (){
                Get.to(DetailsScreen( detailcard :card[index],));
              },
          
         ) ,)
    
        
      ),
    );
  }
}
