import 'package:flutter/material.dart';
import 'package:restaurant_search_app/models/restaurant_model.dart';

class RestaurantCard extends StatelessWidget {
  Restaurant restaurant;

  RestaurantCard(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:(){},child: Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
      width: 500,
      height: 290,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 500,
            child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                child: Image(
                  image: AssetImage(restaurant.img),
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text(restaurant.location),Text('about \$'+restaurant.cost.toString(),style: TextStyle(color: Colors.grey),),],),
                Text('open at '+restaurant.time)
              ],
            ),
          ),

        ],
      ),
    ));
  }
}
