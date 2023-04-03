import 'package:flutter/material.dart';
import 'package:hospital/screens/Hosp_Details_screen.dart';

class Hospital_List extends StatefulWidget {
  @override
  State<Hospital_List> createState() => _Hospital_ListState();
}

class _Hospital_ListState extends State<Hospital_List> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 5.0),
      child: Container(
        width: 320.0,
        height: 380.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromARGB(66, 208, 184, 184)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  width: 120.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 10.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assest/images/hosp.jpeg.jpg')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                  child: Column(
                    children: [
                      Text(
                        'Apollo',
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Text(' '),
                      Text(
                        'chennai,India',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Open 24x7',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.green[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 213, 228, 240)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: Text(
                      '170 Doctors',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 213, 228, 240)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: Text(
                      '710 Beds',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 213, 228, 240)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: Text(
                      '1 Ambulance',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Text(
                  'The system comprises 22 emergency rooms,60 \n \t \t \t \t \t\tambulance and over 500 personel',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 45.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 92, 204, 79)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        )),
                    onPressed: () {
                      gotoDetailsScreen();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'View',
                          style: TextStyle(
                              color: Color.fromARGB(255, 254, 254, 254),
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 92, 204, 79)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        )),
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Enqurie Now',
                          style: TextStyle(
                              color: Color.fromARGB(255, 254, 254, 254),
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void gotoDetailsScreen() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Hospital_Details_Screen(),
    ));
  }
}
