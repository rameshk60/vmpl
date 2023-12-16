import 'package:flutter/material.dart';
import 'package:varun_new_project/components/home/home_screen_modal.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.dummyMenu}) : super(key: key);
  final DummyMenu dummyMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: SizedBox(
          height: 80,
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(dummyMenu.icon, size: 20.0, color: Colors.blue.shade900),
                Text(
                  dummyMenu.title,
                  style: TextStyle(color: Colors.blue.shade800),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget newCrad(){
  //   return Container(
  //   //   Card(
  //   //     elevation: 2,
  //   //     child: Padding(
  //   //       padding: const EdgeInsets.all(10.0),
  //   //       child: Center(
  //   //         child: Column(
  //   //             crossAxisAlignment: CrossAxisAlignment.center,
  //   //             children: [
  //   //               Icon(dummyMenu.icon, size: 30.0, color: Colors.blue.shade900),
  //   //               Text(
  //   //                 dummyMenu.title,
  //   //                 style: TextStyle(color: Colors.blue.shade800),
  //   //               ),
  //   //             ]),
  //   //       ),
  //   //     ));
  //   // );
  // }
}
