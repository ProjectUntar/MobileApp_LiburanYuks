import '/models/object.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Object object;

  const DetailPage({Key? key, required this.object}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          object.name,
        ),
        backgroundColor: Color.fromARGB(255, 0, 191, 255),
        elevation: 5,
      ),
      body: SingleChildScrollView(child: 
        Column(
          children: [
            Image(image: AssetImage(object.photosName)),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Text(
                object.gist,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      )
    );
  }
}
