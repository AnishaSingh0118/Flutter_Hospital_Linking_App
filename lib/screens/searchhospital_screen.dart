import 'package:flutter/material.dart';

class searchbox_Screen extends StatelessWidget {
  const searchbox_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: TextFormField(
            decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 224, 240, 245),
          filled: true,
          hintText: 'Search the Hospitals ',
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        )),
      ),
    );
  }
}
