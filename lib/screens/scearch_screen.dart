import 'package:flutter/material.dart';
import 'package:hospital/screens/Hospital_Listview.dart';

import 'searchhospital_screen.dart';

class Search_Screen extends StatelessWidget {
  Search_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            searchbox_Screen(),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Hospital_List();
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 5),
            )
          ],
        ),
      ),
    ));
  }
}
