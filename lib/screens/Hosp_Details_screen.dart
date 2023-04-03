import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hospital/screens/searchhospital_screen.dart';
import 'package:hospital/screens/service_Details_screen.dart';

class Hospital_Details_Screen extends StatefulWidget {
  const Hospital_Details_Screen({super.key});

  @override
  State<Hospital_Details_Screen> createState() =>
      _Hospital_Details_ScreenState();
}

class _Hospital_Details_ScreenState extends State<Hospital_Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20.0,
              ),
              searchbox_Screen(),
              Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 100,
                    color: Color.fromARGB(96, 251, 251, 251),
                    child: Image.asset(
                      'assest/images/hospital_banner.jpeg.jpg',
                      width: 210.0,
                      height: 80.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Text(
                    'Apollo Hospital',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 80.0,
                      right: 80.0,
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 224, 240, 245),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                          ),
                          Text(
                            '\t chennai,Delhi',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Text(
                    'Indraprastha Apollo Hospital,Mathura Rd,\n\t\t\t\t\t\t\ New Delhi,Delhi 110076',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 80.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 224, 240, 245)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assest/images/serviceOffered.jpeg'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Service\noffered',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 224, 240, 245)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assest/images/doctor.jpeg'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Doctor\n174',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 80.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 224, 240, 245)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assest/images/ambulance.jpeg'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Text(
                                'Ambulance\n\t\t1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 224, 240, 245)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assest/images/bed.jpeg'),
                                radius: 30.0,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Beds\n710',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              MyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
