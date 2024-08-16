import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/TravelModel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 63;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: size.height / 1.8,
              child: Stack(
                children: [
                  // image back
                  Container(
                    width: double.infinity,
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        image: DecorationImage(
                            image: AssetImage(travelList[_selectedIndex].image),
                            fit: BoxFit.cover)),
                  ),
                  // head icons
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(100, 255, 255, 255)),
                            child: const Icon(CupertinoIcons.left_chevron),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(100, 255, 255, 255)),
                            child: const Icon(CupertinoIcons.heart),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //list image
                  Positioned(
                    right: 0,
                    top: 100,
                    child: SizedBox(
                      width: 100,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return imageItem(index);
                        },
                      ),
                    ),
                  ),
                  //name & place
                  Positioned(
                    bottom: size.height / 9,
                    left: size.width / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(travelList[_selectedIndex].name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.placemark_fill,
                              color: Colors.white,
                            ),
                            Text(travelList[_selectedIndex].location,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // card list
                      Card(
                        child: Container(
                          color: Colors.white,
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                travelList[_selectedIndex].distance,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 120, 202, 222),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                          side: BorderSide(
                              color: Color.fromARGB(45, 0, 0, 0), width: 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Card(
                          child: Container(
                            color: Colors.white,
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Temp",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  travelList[_selectedIndex].temp + "°C",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 120, 202, 222),
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                            side: BorderSide(
                                color: Color.fromARGB(45, 0, 0, 0), width: 1),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          color: Colors.white,
                          width: 90,
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rating",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                travelList[_selectedIndex].rating,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 120, 202, 222),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                          side: BorderSide(
                              color: Color.fromARGB(45, 0, 0, 0), width: 1),
                        ),
                      ),
                    ],
                  ),
                  // description
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ExpandableText(
                          travelList[_selectedIndex].discription,
                          expandText: "Read more",
                          collapseText: "Shoe less",
                          maxLines: 2,
                          linkColor: Colors.blue,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  // price
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 65, 30, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Total Price",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(130, 0, 0, 0)),
                            ),
                            Text(
                              "\$" + travelList[_selectedIndex].price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 33),
                            ),
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          width: 90,
                          height: 90,
                          child: const Icon(
                            CupertinoIcons.chevron_right,
                            color: Colors.white,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
          child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        image: AssetImage(travelList[index].image),
                        fit: BoxFit.fill)),
                width: _selectedIndex == index ? imageSize + 20 : imageSize,
                height: _selectedIndex == index ? imageSize + 20 : imageSize,
                duration: const Duration(milliseconds: 500),
              )),
        ),
      ],
    );
  }
}
