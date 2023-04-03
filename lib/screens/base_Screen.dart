import 'package:flutter/material.dart';

import 'package:hospital/screens/Home_Screen.dart';
import 'package:hospital/screens/singup_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class base_Screen extends StatefulWidget {
  const base_Screen({super.key});

  @override
  State<base_Screen> createState() => _base_ScreenState();
}

class _base_ScreenState extends State<base_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black,
                spreadRadius: 2,
                offset: const Offset(3, 6),
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('assest/images/mainlogo.jpeg'),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Row(
          children: [
            SizedBox(
              width: 65.0,
            ),
            Text(
              'Welcome To',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Mboalab',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              """"if you are looking for the\nHospitals Listing then look\n here"\t""",
              style: TextStyle(
                  color: Color.fromARGB(255, 122, 116, 116), fontSize: 20.0),
            ),
            Icon(
              Icons.arrow_downward_outlined,
            )
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      SizedBox(
        height: 50.0,
        width: 190.0,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => Home_Screeen(),
            ));
          },
          child: Text('LOOK UP'),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromARGB(255, 30, 131, 213)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              )),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      SizedBox(
        height: 50.0,
        width: 190.0,
        child: ElevatedButton(
          onPressed: () {
            launchUrlStart(
                url: "https://hospitalrecord.daisyjohnson4.repl.co/");
          },
          child: Text('LOGIN'),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromARGB(255, 78, 209, 58)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              )),
        ),
      ),
      SizedBox(
        height: 50.0,
      ),
      SizedBox(
        height: 30.0,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Text(
          'For Hospital Registration',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 65.0),
            child: Text(
              "Don't have an account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
              onPressed: () {
                launchUrlStart(
                    url: "https://hospitalrecord.daisyjohnson4.repl.co/create");
              },
              child: Text('Create new one'))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(onPressed: () {}, child: Text('Privacy Policy')),
          ),
          TextButton(onPressed: () {}, child: Text('Terms of service')),
        ],
      ),
    ]));
  }

  Future<void> launchUrlStart({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
