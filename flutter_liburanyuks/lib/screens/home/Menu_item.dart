import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_liburanyuks/screens/home/Detail.dart';
import 'package:like_button/like_button.dart';
import '/models/object.dart';

bool isLiked = false;
int likeCount = 20;

class Menu extends StatelessWidget {
  const Menu({Key? key, required this.object}) : super(key: key);
  final Object object;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          child: Material(
            color: Colors.white,
            elevation: 8,
            borderRadius: BorderRadius.circular(15),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(object: object)));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Ink.image(
                    image: AssetImage(object.photosName),
                    height: constraints.maxHeight * 0.6,
                    width: constraints.maxWidth,
                    fit: BoxFit.cover,
                  ),
                  LikeButton(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    mainAxisAlignment: MainAxisAlignment.start,
                    size: 30,
                    isLiked: isLiked,
                    likeCount: likeCount,
                    likeBuilder: (isLiked) {
                      final color = isLiked ? Colors.red : Colors.grey;

                      return Icon(
                        Icons.favorite,
                        color: color,
                      );
                    },
                    countBuilder: (count, isLiked, text) {
                      final color = isLiked ? Colors.black : Colors.grey;

                      return Text(
                        text,
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 7, right: 6, top: 7, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                object.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
