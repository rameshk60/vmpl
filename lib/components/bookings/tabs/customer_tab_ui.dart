import 'package:flutter/material.dart';
import 'package:varun_new_project/components/enquiry/enquiry_model.dart';
// import 'package:varun_new_project/components/bookings/bookings_model.dart';
// import 'package:varun_new_project/components/enquiry/enquiry_model.dart';

class CustomeTabUIPgae extends StatefulWidget {
  const CustomeTabUIPgae({super.key});

  @override
  State<CustomeTabUIPgae> createState() => _CustomeTabUIPgaeState();
}

class _CustomeTabUIPgaeState extends State<CustomeTabUIPgae> {
  int index = 0;

  late String cityValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 200),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const TextField(
                      // controller: userName,
                      decoration: InputDecoration(
                    labelText: "Enquuiry No:",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                    border: OutlineInputBorder(),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        print("object");
                        print(getEnquiryModalData().length);

                        (getEnquiryModalData().length == 0)
                            ? Container(
                                child: const Center(
                                  child: Text("No Data Found"),
                                ),
                              )
                            : customerDetails();
                      },
                      child: const Text("GO")),
                )
              ],
            ),
            customerDetails()
          ],
        ),
      ),
    );
  }

  Widget customerDetails() {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            color: Colors.blue.shade50,
            child: const SingleChildScrollView(
                child: Column(
              //   children: List.generate(getEnquiryModalData().length, (index) {
              // print(getEnquiryModalData().length);
              // return const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Full Name :  ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: Row(
                //     children: [
                //       Text("Full Name :"),
                //       TextFormField(
                //           // controller: userName,
                //           decoration: const InputDecoration(
                //         labelStyle:
                //             TextStyle(color: Colors.black, fontSize: 18),
                //         border: OutlineInputBorder(),
                //         // border: myInput(),
                //         // enabledBorder: myInput(),
                //         // focusedBorder: myFocus(),
                //       )),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: Row(
                //     children: [
                //       Text("Full Name :"),
                //       TextFormField(
                //           // controller: userName,
                //           decoration: const InputDecoration(
                //         labelStyle:
                //             TextStyle(color: Colors.black, fontSize: 18),
                //         border: OutlineInputBorder(),
                //         // border: myInput(),
                //         // enabledBorder: myInput(),
                //         // focusedBorder: myFocus(),
                //       )),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: Row(
                //     children: [
                //       const Text(
                //         'Gender: ',
                //         style: TextStyle(fontSize: 18),
                //       ),
                //       Radio(
                //         value: 0,
                //         groupValue: _radioVal,
                //         onChanged: (int? value) {
                //           print(value);

                //           if (value != null) {
                //             setState(() {
                //               _radioVal = value;
                //             });
                //           }
                //         },
                //       ),
                //       const Text('Male ', style: TextStyle(fontSize: 18)),
                //       Radio(
                //         value: 1,
                //         groupValue: _radioVal,
                //         onChanged: (int? value) {
                //           print(value);
                //           if (value != null) {
                //             setState(() {
                //               _radioVal = value;
                //             });
                //           }
                //         },
                //       ),
                //       const Text('Female ', style: TextStyle(fontSize: 18)),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: const TextField(
                //       // controller: userName,
                //       decoration: InputDecoration(
                //     labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                //     border: OutlineInputBorder(),
                //     // border: myInput(),
                //     // enabledBorder: myInput(),
                //     // focusedBorder: myFocus(),
                //   )),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: Row(
                //     children: [
                //       Text("Full Name :"),
                //       TextFormField(
                //           // onTap: () {
                //           //   DateTimme
                //           // },
                //           // controller: userName,
                //           decoration: const InputDecoration(
                //         labelStyle:
                //             TextStyle(color: Colors.black, fontSize: 18),
                //         border: OutlineInputBorder(),
                //         // border: myInput(),
                //         // enabledBorder: myInput(),
                //         // focusedBorder: myFocus(),
                //       )),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: Row(
                //     children: [
                //       Text("Full Name :"),
                //       const TextField(
                //           // controller: userName,
                //           decoration: InputDecoration(
                //         labelStyle:
                //             TextStyle(color: Colors.black, fontSize: 18),
                //         border: OutlineInputBorder(),
                //         // border: myInput(),
                //         // enabledBorder: myInput(),
                //         // focusedBorder: myFocus(),
                //       )),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   child: const TextField(
                //       // controller: userName,
                //       decoration: InputDecoration(
                //     labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                //     border: OutlineInputBorder(),
                //     // border: myInput(),
                //     // enabledBorder: myInput(),
                //     // focusedBorder: myFocus(),
                //   )),
                // ),
                // Container(
                //     decoration: BoxDecoration(
                //         border: Border.all(color: Colors.black),
                //         borderRadius: BorderRadius.all(Radius.circular(10))),
                //     padding: EdgeInsets.all(10),
                //     width: MediaQuery.of(context).size.width * 0.4,
                //     child: Row(
                //       children: [
                //         Text("Full Name :"),
                //         DropdownButtonHideUnderline(
                //             child: DropdownButton<city>(
                //                 style: TextStyle(
                //                     color: Colors.black, fontSize: 18),
                //                 items: cities
                //                     .map<DropdownMenuItem<city>>((city value) {
                //                   return DropdownMenuItem(
                //                       value: value,
                //                       child: Column(
                //                         children: [Text(value.cityName)],
                //                       ));
                //                 }).toList(),
                //                 onChanged: (value) {
                //                   print(value);
                //                   setState(() {
                //                     cityValue = value.toString();
                //                   });
                //                 })),
                //       ],
                //     )),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //     padding: const EdgeInsets.all(10),
                //     width: MediaQuery.of(context).size.width * 0.3,
                //     decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: TextButton(
                //       onPressed: () {},
                //       child: const Text(
                //         "Update",
                //         style: TextStyle(
                //             fontWeight: FontWeight.w900,
                //             color: Colors.white,
                //             fontSize: 18),
                //       ),
                //     )),
                SizedBox(
                  height: 30,
                )
              ],
            ))));
  }
}
