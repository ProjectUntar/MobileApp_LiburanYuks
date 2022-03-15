import 'package:flutter/material.dart';
import 'package:flutter_liburanyuks/screens/home/object_item.dart';
import '/models/object.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Object> objects = [
    Object(
        name: 'Pemandian Air Panas Way Belerang',
        photosName: 'assets/images/objects/Pemandian Air Panas.jpg',
        gist:
            'Way Belerang merupakan sebuah tempat pemandian air panas di lereng Gunung Rajabasa, Lampung Selatan'),
    Object(
        name: 'Pulau Tegal Mas',
        photosName: 'assets/images/objects/Pulau Tegal Mas.jpeg',
        gist:
            'Banyak yang menyebutnya mirip dengan Maladewa, karena eksotisme alam & penginapan terapung yang ada di sekelilingnya.'),
    Object(
        name: 'Pulau Pahawang',
        photosName: 'assets/images/objects/Pulau-Pahawang-Lampung.jpg',
        gist:
            'Banyak aktivitas wisata yang bisa dilakukan saat Anda mengunjungi Pulau Pahawang, mulai dari memancing, snorkeling, hingga diving.'),
    Object(
        name: 'Taman Nasional Way Kambas',
        photosName: 'assets/images/objects/Taman Nasional Way Kambas.jpg',
        gist:
            'Sebagai tempat pelestarian gajah dan badak, taman nasional ini ada bertujuan untuk sarana konservasi dan zonasi berbagai fauna dari kepunahan.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(4),
        childAspectRatio: 0.72,
        children: objects.map<Widget>((Object p) {
          return ObjectItem(object: p);
        }).toList(),
      ),
    );
  }
}
