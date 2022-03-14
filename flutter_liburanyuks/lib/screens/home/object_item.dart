import 'package:flutter/material.dart';
import '/models/object.dart';

class ObjectItem extends StatelessWidget {
  const ObjectItem({Key? key, required this.object}) : super(key: key);

  final Object object;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
    );
  }
}
