import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(80),
      
      child: ListView(
        children:<Widget> [
          Container(
            child: Image (
              height: 125,
              width: 125,
              image: AssetImage("assets/images/objects/login_icon.png"),
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Full Name : ', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18,),
              ),            
          ),
          Container(
            child: Expanded(
              child: Text(
              'Brian Wijaya', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),
              ), 
            )            
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Email Address : ', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18,),
              ),            
          ),
          Container(
            child: Expanded(
              child: Text(
              'Brian.535200069@stu.untar.ac.id ', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),
              ), 
            )                       
          ),
         Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Join @ : ', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18,),
              ),            
          ),
          Container(
            child: Expanded(
              child: Text(
              '14-03-2022 ', 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),
              ), 
            )                       
          ),
        ],
      ),
      )

    );
  }
}