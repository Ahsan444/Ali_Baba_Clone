import 'package:alibaba/cart_items.dart';
import 'package:alibaba/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/cartscreen': (context) => CartItems(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController radiocontroller = TextEditingController();
  String review;
  String one, two, three, four, five;

  bool floatbtn = true;
  bool writereview = false;
  bool askquestion = false;
  bool submit = false;
  int _value = 1;
  @override
  void dispose() {
    super.dispose();
  }

  List ohoo = ['1', '2', '3', '4'];
  Map<String, dynamic> bottomicons = {
    'icon1': [Icons.category, Icons.label, Icons.camera_alt, Icons.directions],
    'text': [
      '       All\nCategories',
      'Request for\n  Question',
      'Readyto\n  Ship',
      'Personal\nProtective\nEquipment'
    ],
  };

  Map<String, dynamic> radioicons = {
    'one': ['Very Weak', 'Weak', 'Okay', 'Good', 'Very Good'],
    'two': ['Very Weak', 'Weak', 'Okay', 'Good', 'Very Good'],
    'three': ['Very Weak', 'Weak', 'Okay', 'Good', 'Very Good'],
    'four': ['Very Weak', 'Weak', 'Okay', 'Good', 'Very Good'],
    'five': [
      'yes',
      'no',
    ],
  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Stack(
              children: [
                //slider images
                Column(
                  children: [
                    //TabbarViews
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: TabBarView(children: [
                        SingleChildScrollView(
                          child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  //image sliders
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    //slider images
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Container(
                                          width: 360,
                                          height: 250,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              image: new DecorationImage(
                                                  image: new NetworkImage(
                                                      'https://image.freepik.com/free-photo/woman-holding-various-shopping-bags-copy-space_23-2148674122.jpg'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 250,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              image: new DecorationImage(
                                                  image: new NetworkImage(
                                                      'https://www.zdnet.com/a/hub/i/2015/05/01/2ae96e16-fdcb-4bb4-9e90-949780e4033f/applewatch-fitness1.jpg'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 250,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              image: new DecorationImage(
                                                  image: new NetworkImage(
                                                      'https://cdn.vnexplorer.net/node-01/wp-content/uploads/2021/07/28080915/how-to-choose-a-running-watch1627459754.jpg'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                  //icons bottom pictures slider
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children:
                                        List.generate(ohoo.length, (index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Icon(bottomicons['icon1'][index]),
                                          Center(
                                              child: Text(
                                                  bottomicons['text'][index])),
                                        ],
                                      );
                                    }),
                                  ),
                                  //bottom container cards and icons
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Container(
                                        width: double.infinity,
                                        height: 280,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Colors.black,
                                                  Colors.blue
                                                ])),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            //step2020 text
                                            Container(
                                              width: double.infinity,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    topLeft:
                                                        Radius.circular(10)),
                                                color: Colors.orange,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'September 2020',
                                                  style: TextStyle(
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            //imersive txt
                                            Text(
                                              'Immersive Experience',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            //three cards
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                //firs card
                                                Container(
                                                  width: 110,
                                                  height: 130,
                                                  child: Card(
                                                    child: Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Container(
                                                            width: 50,
                                                            height: 17,
                                                            color: Colors.blue,
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .play_circle_outline,
                                                                  color: Colors
                                                                      .white70,
                                                                  size: 15,
                                                                ),
                                                                Text(
                                                                  'Reply',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Image.asset(
                                                            'images/livestrem.png',
                                                            scale: 3.3,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 110,
                                                  height: 130,
                                                  child: Card(
                                                    child: Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Container(
                                                            width: 50,
                                                            height: 17,
                                                            color: Colors.blue,
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .play_circle_outline,
                                                                  color: Colors
                                                                      .white70,
                                                                  size: 15,
                                                                ),
                                                                Text(
                                                                  'Reply',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Image.asset(
                                                            'images/livestrem.png',
                                                            scale: 3.3,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 110,
                                                  height: 130,
                                                  child: Card(
                                                    child: Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Container(
                                                            width: 50,
                                                            height: 17,
                                                            color: Colors.blue,
                                                            child: Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .play_circle_outline,
                                                                  color: Colors
                                                                      .white70,
                                                                  size: 15,
                                                                ),
                                                                Text(
                                                                  'Reply',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10,
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Image.asset(
                                                            'images/livestrem.png',
                                                            scale: 3.3,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            //explorenow buttton
                                            ButtonTheme(
                                              minWidth: 150.0,
                                              height: 40.0,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(
                                                      context, '/cartscreen');
                                                },
                                                disabledTextColor: Colors.white,
                                                disabledColor: Colors.orange,
                                                child: Text('Explore Now'),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  //new buyer promotion
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.pink.withOpacity(0.2),
                                                Colors.white.withOpacity(0.9)
                                              ])),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'New Buyer Promotion',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.pink),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'Upto 60 transaction fees waived on \n first three orders',
                                                  style: TextStyle(
                                                      color: Colors.pink),
                                                )
                                              ],
                                            ),
                                            Container(
                                              width: 90,
                                              height: 100,
                                              child: Card(
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                        'images/stretch.png'),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 70),
                                                      child: Container(
                                                        width: 50,
                                                        height: 17,
                                                        decoration: BoxDecoration(
                                                            color: Colors.blue,
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        5),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        5))),
                                                        child: Center(
                                                          child: Text(
                                                            'up to -60',
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  //time boxes and top ranking txt
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Weekly Deals',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 25,
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                          child: Center(
                                            child: Text(
                                              '20',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ':',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                          child: Center(
                                            child: Text(
                                              '08',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ':',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Container(
                                          width: 25,
                                          height: 23,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              )),
                                          child: Center(
                                            child: Text(
                                              '03',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Top Ranking',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: Container(
                                          width: 85,
                                          height: 90,
                                          child: Card(
                                            color: Colors.grey.withOpacity(0.1),
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                    'images/stretch.png'),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 60),
                                                  child: Container(
                                                    width: 35,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        5),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        5))),
                                                    child: Center(
                                                      child: Text(
                                                        '-60%',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 85,
                                        height: 90,
                                        child: Card(
                                          color: Colors.grey.withOpacity(0.1),
                                          child: Stack(
                                            children: [
                                              Image.asset('images/stretch.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 60),
                                                child: Container(
                                                  width: 35,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                  child: Center(
                                                    child: Text(
                                                      '-60%',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 85,
                                        height: 90,
                                        child: Card(
                                          color: Colors.grey.withOpacity(0.1),
                                          child: Stack(
                                            children: [
                                              Image.asset('images/stretch.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 60),
                                                child: Container(
                                                  width: 35,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                  child: Center(
                                                    child: Text(
                                                      '-60%',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 85,
                                        height: 90,
                                        child: Card(
                                          color: Colors.grey.withOpacity(0.1),
                                          child: Stack(
                                            children: [
                                              Image.asset('images/stretch.png'),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 60),
                                                child: Container(
                                                  width: 35,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                  child: Center(
                                                    child: Text(
                                                      '-60%',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Rs 1,460.51',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        'Rs 1,549.51',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '1 review',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '5 views',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'New Arrivals',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          'OEM Factories',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              )),
                        ),
                        Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CarouselSlider(
                                        options: CarouselOptions(
                                          height: 250,
                                          aspectRatio: 16 / 9,
                                          viewportFraction: 0.8,
                                          initialPage: 0,
                                          enableInfiniteScroll: true,
                                          reverse: false,
                                          autoPlay: true,
                                          autoPlayInterval:
                                              Duration(seconds: 2),
                                          autoPlayAnimationDuration:
                                              Duration(milliseconds: 800),
                                          autoPlayCurve: Curves.fastOutSlowIn,
                                          enlargeCenterPage: true,
                                          scrollDirection: Axis.horizontal,
                                        ),
                                        items: [
                                          1,
                                          2,
                                          3,
                                        ].map((i) {
                                          return Builder(
                                            builder: (BuildContext context) {
                                              return Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                    color: Colors.amber,
                                                    image: new DecorationImage(
                                                        image: new NetworkImage(
                                                            'https://cdn.shopify.com/s/files/1/0671/0621/products/DSC_0514_1.jpg?v=1601041614',
                                                            scale: 2),
                                                        fit: BoxFit.fill)),
                                              );
                                            },
                                          );
                                        }).toList(),
                                      ),
                                      Column(
                                        children: [
                                          FloatingActionButton(
                                              mini: true,
                                              child: Icon(Icons.share),
                                              onPressed: () {}),
                                          FloatingActionButton(
                                            mini: true,
                                            heroTag: 'Ashan',
                                            child: Icon(
                                              Icons.favorite,
                                              color: floatbtn
                                                  ? Colors.red
                                                  : Colors.white,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                floatbtn = !floatbtn;
                                              });
                                            },
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  //discount txt
                                  Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Creeks City Men\'s Straight ArmFit',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Rs 799.00',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Rs 899.00',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '11%off',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.move_to_inbox),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Select Colour',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          //material button
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 40),
                                            child: MaterialButton(
                                                color: Colors.white,
                                                splashColor: Colors.green,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0)),
                                                onPressed: () {},
                                                child: Text(
                                                  'Dark Blue',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 16),
                                                )),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.move_to_inbox),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Select Waist',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          //material button
                                          SizedBox(
                                            height: 10,
                                          ),
                                          //material buttons of select buttons
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              MaterialButton(
                                                  minWidth: 16,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.green,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '30',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              MaterialButton(
                                                  minWidth: 16,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.green,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '32',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              MaterialButton(
                                                  minWidth: 16,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.green,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '34',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              MaterialButton(
                                                  minWidth: 16,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.green,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '36',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              MaterialButton(
                                                  minWidth: 16,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.green,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '36',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          //select in seam portion
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.move_to_inbox),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Select Waist',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          //material button
                                          SizedBox(
                                            height: 10,
                                          ),
                                          //material buttons of select buttons
                                          Row(
                                            children: [
                                              MaterialButton(
                                                  minWidth: 16,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.green,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '32',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          //description portion
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.move_to_inbox),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Description',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Image.asset(
                                            'images/sale_logo_normal.png',
                                            width: 64,
                                            height: 64,
                                          ),
                                          Text(
                                            'Sale ends in 1 day,2 hours,2 minutes, 7\nseconds',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          //review box
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    'Write a\nreview',
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.chat),
                                                  Text(
                                                    'Ask a question',
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          //scale and sizeguide txt
                                          Row(
                                            children: [
                                              Image.asset(
                                                'images/rulelr.png',
                                                scale: 4,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Size Guide',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'What is fault?\nWe really can\'t tell, each garment has a \ndifferent minor fault. But one thing we can \ntell is that minor and hardly\nnoticeable.'
                                            'Rest assured that if you don\'t like the\nproduct or think it is more faulty than you\nhad thought-simply'
                                            'return it under our legendry\'30 Days no Question Asked Money-Back Guarantee.',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                          ),
                                          //fabric details
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 5,
                                                      height: 5,
                                                      decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'Straight fit style',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black
                                                            .withOpacity(0.9),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 5,
                                                      height: 5,
                                                      decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'Two front pockets',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black
                                                            .withOpacity(0.9),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 5,
                                                      height: 5,
                                                      decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'Two back pockets',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black
                                                            .withOpacity(0.9),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 5,
                                                      height: 5,
                                                      decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'one coin pocket',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black
                                                            .withOpacity(0.9),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Fabric:',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '100% Cotton',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Powered by',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.blue),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.change_history)
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          //reviews stars
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text('0 Reviews'),

                                          //review and ask question material buttons
                                          SizedBox(
                                            height: 10,
                                          ),
                                          //materilas buttons
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Material(
                                                color: Colors.white,
                                                child: RaisedButton(
                                                    splashColor: Colors.green,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.6),
                                                                width: 1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0)),
                                                    onPressed: () {
                                                      setState(() {
                                                        writereview =
                                                            !writereview;
                                                        if (askquestion ==
                                                            true) {
                                                          askquestion = false;
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      'Write A Review',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 16),
                                                    )),
                                              ),
                                              MaterialButton(
                                                  minWidth: 20,
                                                  color: Colors.white,
                                                  splashColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.grey
                                                              .withOpacity(0.6),
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {
                                                    setState(() {
                                                      askquestion =
                                                          !askquestion;
                                                      if (writereview == true) {
                                                        writereview = false;
                                                      }
                                                    });
                                                  },
                                                  child: Text(
                                                    'Ask A Question',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                            ],
                                          ),
                                          //hidden content click on button and show data start from here
                                          writereview
                                              ? Container(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'WRITE A REVIEW',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '* ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                          Text(
                                                            'Indicate a required field',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '* ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                          Text(
                                                            'Score',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      //reviews stars
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .star_border,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border,
                                                                color: Colors
                                                                    .yellow,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '* ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                          Text(
                                                            'Title',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 35,
                                                        width: double.infinity,
                                                        child: TextField(
                                                          controller:
                                                              controller,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText: 'title',
                                                            border: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            7)),
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color: Colors
                                                                          .red),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '* ',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                          Text(
                                                            'Review',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      SizedBox(
                                                        height: 60,
                                                        width: double.infinity,
                                                        child: TextField(
                                                          onChanged: (value) {
                                                            setState(() {
                                                              review = value;
                                                            });
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                            hintText: 'review',
                                                            border: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            7)),
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey)),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                      color: Colors
                                                                          .red),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        'How would you rate our customer service?',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      //customer review section review radio buttons
                                                      Column(
                                                          children:
                                                              List.generate(
                                                                  radioicons
                                                                      .length,
                                                                  (index) {
                                                        return RadioListTile(
                                                            title: Text(
                                                                radioicons[
                                                                        'one']
                                                                    [index]),
                                                            value: index + 6,
                                                            groupValue: _value,
                                                            onChanged: index ==
                                                                    5
                                                                ? null
                                                                : (int value) {
                                                                    one = radioicons[
                                                                            'one']
                                                                        [index];
                                                                    setState(
                                                                        () {
                                                                      _value =
                                                                          value;
                                                                      print('Radio - ' +
                                                                          index
                                                                              .toString());
                                                                    });
                                                                  });
                                                      })),
                                                      Center(
                                                        child: RaisedButton(
                                                          onPressed: () {
                                                            // setState(() {
                                                            //   submit = true;
                                                            // });
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            SecondScreen(
                                                                              titlesec: controller.text,
                                                                              reviewsec: review,
                                                                              radiovalue: one,
                                                                            )));
                                                          },
                                                          color: Colors.black,
                                                          child: Text(
                                                            'Show',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              : Container(),
                                          //ask questions condtoon
                                          askquestion
                                              ? Container(
                                                  width: 200,
                                                  height: 200,
                                                  color: Colors.green,
                                                )
                                              : SizedBox(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              MaterialButton(
                                                  minWidth: 20,
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.red
                                                              .withOpacity(0.6),
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {
                                                    setState(() {});
                                                  },
                                                  child: Text(
                                                    'REVIEWS',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              MaterialButton(
                                                  minWidth: 20,
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: Colors.red
                                                              .withOpacity(0.6),
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0)),
                                                  onPressed: () {
                                                    setState(() {});
                                                  },
                                                  child: Text(
                                                    'QUESTIONS',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 16),
                                                  )),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            )),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.brown,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 200,
                              ),
                              submit
                                  ? Column(
                                      children: [
                                        Text(
                                          'mai pechly container tu aria wa :' +
                                              controller.text,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'sach keh ria m v odru aria :' +
                                              review,
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.greenAccent,
                          child: Text('Consumer Electronics'),
                        ),
                        Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Colors.blue,
                            child: Text('Vehicles & Accessories')),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.black26,
                          child: Text('Sports & Entertainment'),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.lightGreenAccent,
                          child: Text('Machinery'),
                        )
                      ]),
                    ),
                  ],
                ),
                //searchbar and tabs
                Column(
                  children: [
                    //image icon and search bar
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.center_focus_weak),
                          Expanded(
                            child: Container(
                              width: 290,
                              height: 35,
                              child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      prefixIcon: Icon(Icons.search),
                                      labelText: 'Search',
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.black26)))),
                            ),
                          ),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                    //tabbars
                    TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(width: 4, color: Colors.black)),
                      tabs: [
                        //1
                        Tab(
                          child: Container(
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        //2
                        Tab(
                          child: Container(
                            child: Text(
                              "Apparel",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        //3
                        Tab(
                          child: Text(
                            "Agriculture",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        //4
                        Tab(
                          child: Text('Consumer Electronics',
                              style: TextStyle(color: Colors.black)),
                        ),
                        //5
                        Tab(
                          child: Text('Vehicles & Accessories',
                              style: TextStyle(color: Colors.black)),
                        ),
                        //6
                        Tab(
                          child: Text('Sports & Entertainment',
                              style: TextStyle(color: Colors.black)),
                        ),
                        //7
                        Tab(
                          child: Text('Machinery',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ],
                ),
                // front image

                // using tab bar there
              ],
            ),
          ],
        ))),
      ),
    );
  }
}
