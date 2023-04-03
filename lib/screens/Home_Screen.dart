import 'package:flutter/material.dart';

import 'package:hospital/screens/scearch_screen.dart';

class Home_Screeen extends StatefulWidget {
  const Home_Screeen({super.key});

  @override
  State<Home_Screeen> createState() => _Home_ScreeenState();
}

class _Home_ScreeenState extends State<Home_Screeen> {
  final String _greating = "GoodMorning!";

  final String _username = "UserName";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 280.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color.fromARGB(255, 163, 154, 154),
                        spreadRadius: 2,
                        offset: const Offset(1, 4),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('assest/images/mainlogo.jpeg'),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text(
                  _greating,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0, top: 10.0),
                child: Text(
                  _username,
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    width: 300.0,
                    height: 60.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 224, 240, 245)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          )),
                      onPressed: () {
                        GotoSearchcreen();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'Search the Hospitals',
                            style: TextStyle(
                                color: Color.fromARGB(255, 139, 136, 136),
                                fontSize: 20.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text('Most Popular',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromRGBO(246, 147, 67, 1),
                          ),
                          width: 140.0,
                          height: 160.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage: AssetImage(
                                    'assest/images/heart.jpeg',
                                  ),
                                ),
                              ),
                              Text(
                                'Cardiology',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '42 Hospitals ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 140.0,
                          height: 160.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage: AssetImage(
                                    'assest/images/lung.jpeg',
                                  ),
                                ),
                              ),
                              Text(
                                'Transplant',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '23 Hospitals ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromARGB(255, 160, 245, 139),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 340.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color.fromARGB(255, 225, 235, 240),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15.0,
                                    ),
                                    child: CircleAvatar(
                                        radius: 40,
                                        backgroundImage: AssetImage(
                                            'assest/images/logo.jpeg')),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15.0, top: 15.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Apollo',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text('General\nHospitals,\n'),
                                    Row(
                                      children: [
                                        Text('Rating'),
                                        Icon(
                                          Icons.star_border,
                                          size: 20.0,
                                          color: Colors.yellowAccent,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          size: 20.0,
                                          color: Colors.yellowAccent,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          size: 20.0,
                                          color: Colors.yellowAccent,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 90.0,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset('assest/images/grap.jpeg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void GotoSearchcreen() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Search_Screen(),
    ));
  }
}
