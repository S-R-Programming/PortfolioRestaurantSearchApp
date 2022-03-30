import 'package:flutter/material.dart';
import 'package:restaurant_search_app/models/collection_model.dart';

class CollectionCard extends StatelessWidget {
  Collection collection;

  CollectionCard(this.collection);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
          width: 150,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(collection.img),
                fit: BoxFit.fill,
              )),
        ),
        Positioned(
          top: 120,
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(color: Colors.black54,borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)) ),
            ),
          ),
        Positioned(
            left: 6,
            top: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              collection.title,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              collection.places.toString() + " places",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )
              ],

            )),
      ],
    );
  }
}
