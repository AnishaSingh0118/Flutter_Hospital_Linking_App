import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class singup_Screen extends StatefulWidget {
  singup_Screen({super.key});

  @override
  State<singup_Screen> createState() => _singup_ScreenState();
}

class _singup_ScreenState extends State<singup_Screen> {
  bool is_check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0),
        child: Column(
          children: [
            Text(
              'Register',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 55, 109, 202),
                  fontWeight: FontWeight.w600),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Services',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Facilities (Optional)',
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Number of Beds',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Address',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Country',
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'City',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Postal Code',
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical()),
                          labelText: 'Contact or Website',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: is_check,
                      onChanged: (val) {
                        setState(() {
                          is_check = val!;
                        });
                      },
                    ),
                    Text('I agree with the terms and conditions '),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 60.0, right: 60.0, top: 30.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 76, 133, 150)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        )),
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 45.0,
                        ),
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Color.fromARGB(255, 244, 244, 244),
                              fontSize: 15.0),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
