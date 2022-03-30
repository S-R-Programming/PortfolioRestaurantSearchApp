import 'package:flutter/material.dart';
import 'package:restaurant_search_app/models/restaurant_model.dart';
import 'package:restaurant_search_app/widgets/collection_card.dart';
import 'package:restaurant_search_app/widgets/restaurant_card.dart';

import '../models/collection_model.dart';

class HomeScreen extends StatelessWidget {
  String value_text = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_location_outlined,
                              color: Colors.red,
                            ),
                            Text(
                              'Select your location',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.view_headline))
                    ],
                  ),
                ),
                TextFormField(
                  //key: _formKey,ここはダメ
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.search),
                    hintText: 'Restaurant name or a dish...',
                    labelText: 'Restaurant name or a dish...',
                  ),
                  onChanged: (String? value) {
                    value_text = value.toString();
                    print(value.toString());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                            child: Text(
                          'Curated collections',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          child: PageView.builder(
                            controller: PageController(
                              viewportFraction: 0.45,
                            ),
                            itemCount:
                                collections == null ? 0 : collections.length,
                            itemBuilder: (_, index) {
                              return CollectionCard(collections[index]);
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Popular restaurants around you',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics:NeverScrollableScrollPhysics(),
                            itemCount: restaurants.length,
                            itemBuilder: (context, index) => RestaurantCard(restaurants[index]))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
