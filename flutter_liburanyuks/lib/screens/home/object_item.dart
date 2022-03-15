import 'dart:ui';

import 'package:flutter/material.dart';
import '/models/object.dart';

class ObjectItem extends StatelessWidget {
  const ObjectItem({Key? key, required this.object}) : super(key: key);

  final Object object;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black.withOpacity(0.15),
                offset: const Offset(5, 5),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: constraints.maxHeight * 0.75,
                width: constraints.maxWidth,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(object.photosName, fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2, right: 6, top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(object.name, style: const TextStyle(fontSize: 15)),
                        Icon(Icons.favorite_border,
                            size: 16, color: Colors.red),
                      ],
                    ),
                    Text(object.gist, style: const TextStyle(fontSize: 11)),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
