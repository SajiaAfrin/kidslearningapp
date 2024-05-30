import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
           "Learn",
            style: TextStyle(fontSize: 36, color: Colors.black),
          ),
          leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(), // Replace with your desired screen
              ),
            );
          },
          child: Icon(Icons.filter_list,
           color: Colors.black,
            size: 40.0,),
        ),
         
          // actions: [Image(image: AssetImage("assets/c_bluebird.png",))],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/c_girafe.png'),
              ),
              Text(
                'Sajia Afrin',
                style: TextStyle(
                    fontFamily: 'PatricHand-Regular',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.phone,
                        color: Colors.black),
                    title: Text('01822210916',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro-Regular',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,)
                    ),
                  ),
                ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.mail,
                        color: Colors.black),
                    title: Text('sajia@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro-Regular',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,)
                    ),
                  ),
                ),
            ],

          ),
        ),
      
    );
  }
}