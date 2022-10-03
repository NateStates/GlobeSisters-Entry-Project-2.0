import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<Image> recommended_cities = [
    Image.asset("assets/images/LosAngeles.jpg"),
    Image.asset("assets/images/newyork1.jpg"),
    Image.asset("assets/images/london.jpg"),
  ];

  List<Image> images_activities = [
    Image.asset("assets/images/surfing.png"),
    Image.asset("assets/images/photography.jpg"),
    Image.asset("assets/images/hiking2.jpg"),
    Image.asset("assets/images/biking.png"),
  ];

  List<String> activities_name = ["Surfing", "Photography", "Hiking", "Biking"];

  @override
  Widget build(BuildContext context) {
    TabController Header_Navigator_Controller =
        TabController(length: 2, vsync: this);
    return Scaffold(
        body: Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24, top: 20, bottom: 7, right: 12),
              child: Text(" Welcome! Let's Discover",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 100,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 17),
            child: Image.asset("assets/images/travel.png")),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20, bottom: 7),
              child: Text("Sort by Popular Cities",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Container(
            padding: const EdgeInsets.only(left: 20),
            height: 220,
            //width: double.maxFinite,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 15, top: 10),
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: recommended_cities[index].image,
                          fit: BoxFit.cover)),
                );
              },
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20, bottom: 7),
              child: Text("Sort by Activities",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Container(
            height: 100,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 17),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: images_activities[index].image,
                                fit: BoxFit.cover)),
                      ),
                      Text(activities_name[index],
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                );
              },
            ))
      ],
    ));
  }
}
