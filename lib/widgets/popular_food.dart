import 'package:flutter/material.dart';
import 'package:food_app_concept/provider/service.dart';
import 'package:food_app_concept/provider/services.dart';
import 'package:food_app_concept/widgets/small_floating_button.dart';
import 'package:provider/provider.dart';

import '../common.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Service> foodList = Provider.of<Services>(context).items;
    return Container(
      height: 270,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foodList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: red[50],
                              offset: Offset(3, 8),
                              blurRadius: 15)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          "${foodList[index].imageUrl}",
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(foodList[index].name),
                            ),
                            SmallButton(Icons.favorite)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "4.5",
                                    style: TextStyle(color: grey, fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: red,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "(298)",
                                    style: TextStyle(color: grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text(
                            //     "\$${foodList[index].price}",
                            //     style: TextStyle(color: black, fontSize: 18),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
