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
                height: constraints.maxHeight *0.6,
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
                padding: const EdgeInsets.only(left: 4, right: 6, top: 4, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        Expanded(
                          child:Text(
                            object.name,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ), 
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.favorite_border,
                            size: 25, color: Colors.red
                          ),
                        ),
                      ],
                    ),  
                                   
                  ],               
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
