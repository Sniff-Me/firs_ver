import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<String> images = [
    'https://i.pinimg.com/originals/80/d3/64/80d364e09d31fcba8af274926d4332ff.jpg',
    'https://www.rd.com/wp-content/uploads/2021/01/GettyImages-588935825.jpg',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg',
    'https://i.pinimg.com/originals/ef/59/0d/ef590d3e2990e6827d96ad8ce55a755b.png',
  ];

  // final controller = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CartPage'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Carousel(
                    dotBgColor: Colors.transparent,
                    dotIncreasedColor: Colors.pinkAccent[400],
                    dotSpacing: 30,
                    images: images
                        .map(
                          (item) => Container(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: 20,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListTile(
                      title: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("List $index"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 300,
                              child: Center(
                                child: Text("List $index"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
  margin: EdgeInsets.symmetric(horizontal: 12),
  color: Colors.grey,
  child: Image.network(
    urlImage,
    fit: BoxFit.cover,
  ),
);
