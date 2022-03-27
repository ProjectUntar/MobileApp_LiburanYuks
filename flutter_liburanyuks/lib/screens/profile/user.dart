import 'package:flutter/material.dart';
import 'package:flutter_liburanyuks/screens/login.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),      
        child: ListView(
          children:<Widget> [
            Container(
              padding: const EdgeInsets.only(bottom: 50),
              child: const Text(
                'Boarding Pass', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
              ),            
            ),
            Container(
              child: 
              const Image (
                height: 125,
                width: 125,
                image: AssetImage("assets/images/objects/login_icon.png"),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Full Name : ', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,),
              ),            
            ),
            Container(
              child: const Expanded(
                child: Text(
                'Brian Wijaya', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold),
                ), 
              )            
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Email Address : ', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,),
              ),            
            ),
            Container(
              child: const Expanded(
                child: Text(
                'Brian.535200069@stu.untar.ac.id ', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold),
                ), 
              )
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Join @ : ', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18,),
              ),            
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Expanded(
                child: Text(
                '14-03-2022 ', 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold),
                ), 
              )                       
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.only(left: 120,right: 120, top: 10, bottom: 10),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: const Text(
                  'Logout',
                  textScaleFactor: 1.5,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage())
                  );
                },
              )
            ),
          ],
        ),
      )
    );
  }
}