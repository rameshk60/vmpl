import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:varun_new_project/components/bookings/new_bookings.dart';
import 'package:varun_new_project/components/enquiry/create_new_enquiry.dart';
import 'package:varun_new_project/components/enquiry/enquiry_model.dart';

class EnquiryList extends StatefulWidget {
  const EnquiryList({super.key});

  @override
  State<EnquiryList> createState() => _EnquiryListState();
}

class _EnquiryListState extends State<EnquiryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enquiry Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            enquiryCard(),
          ],
        ),
      ),
    );
  }

  Widget enquiryCard() {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: List.generate(getEnquiryModalData().length, (index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
                color: Colors.white,
                child: ExpansionTile(
                    title: Column(
                      children: [
                        Container(
                          color: (index % 2 == 0)
                              ? Colors.white60
                              : Colors.blue.shade50,
                          height: 180,
                          width: MediaQuery.of(context).size.width * 1,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            height: 60,
                                            width: 60,
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              100))),
                                              child: Image.asset(
                                                  'assets/images/12.png'),
                                            )),
                                        Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const NewBookings()),
                                                );
                                              },
                                              child: Text(
                                                getEnquiryModalData()
                                                    .elementAt(index)
                                                    .enqFname
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 25),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 50),
                                        child: Container(
                                            height: 40,
                                            width: 120,
                                            alignment: Alignment.topLeft,
                                            decoration: BoxDecoration(
                                                color: (getEnquiryModalData()
                                                            .elementAt(index)
                                                            .status ==
                                                        "Hot")
                                                    ? const Color.fromARGB(
                                                        255, 197, 30, 18)
                                                    : (getEnquiryModalData()
                                                                .elementAt(
                                                                    index)
                                                                .status ==
                                                            "warm")
                                                        ? Colors.amber
                                                        : Colors.green.shade300,
                                                // : Colors.orange,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  getEnquiryModalData()
                                                      .elementAt(index)
                                                      .status,
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white)),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(
                                indent: 50,
                                endIndent: 50,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                    Icons.phone_forwarded),
                                                Text(
                                                  getEnquiryModalData()
                                                      .elementAt(index)
                                                      .enqPhn
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.date_range_outlined,
                                                  size: 18,
                                                ),
                                                Text(
                                                  getEnquiryModalData()
                                                      .elementAt(index)
                                                      .dateTime
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            color: (index % 2 == 0)
                                ? Colors.white60
                                : Colors.blue.shade50,
                            height: 180,
                            width: MediaQuery.of(context).size.width * 2,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            getEnquiryModalData()
                                                .elementAt(index)
                                                .vehicleDetails
                                                .toString(),
                                            style:
                                                const TextStyle(fontSize: 25),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const NewEnquiry()),
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.edit_note_rounded,
                                            size: 40,
                                            color: Colors.black,
                                          )),
                                    )
                                  ],
                                ),
                                const Divider(
                                  indent: 50,
                                  endIndent: 50,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(20))),
                                    child: Row(children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  "Car Color :",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                Text(
                                                  getEnquiryModalData()
                                                      .elementAt(index)
                                                      .carColor
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: IconButton(
                                                            splashColor:
                                                                Colors.red,
                                                            onPressed:
                                                                () =>
                                                                    showDialog<
                                                                        String>(
                                                                      context:
                                                                          context,
                                                                      builder: (BuildContext
                                                                              context) =>
                                                                          AlertDialog(
                                                                        title: const Text(
                                                                            ' WECHAT'),
                                                                        content:
                                                                            const Text(' WECHAT'),
                                                                        actions: <Widget>[
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'Cancel'),
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'OK'),
                                                                            child:
                                                                                const Text('OK'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                            icon: const Icon(
                                                              Icons.wechat,
                                                              size: 30,
                                                              color:
                                                                  Colors.green,
                                                            ))),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: IconButton(
                                                          splashColor:
                                                              Colors.red,
                                                          onPressed:
                                                              () => showDialog<
                                                                      String>(
                                                                    context:
                                                                        context,
                                                                    builder: (BuildContext
                                                                            context) =>
                                                                        AlertDialog(
                                                                      title: const Text(
                                                                          ' Phone'),
                                                                      content:
                                                                          const Text(
                                                                              ' Phone'),
                                                                      actions: <Widget>[
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              context,
                                                                              'Cancel'),
                                                                          child:
                                                                              const Text('Cancel'),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              context,
                                                                              'OK'),
                                                                          child:
                                                                              const Text('OK'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                          icon: const Icon(
                                                            Icons.phone,
                                                            size: 30,
                                                            color: Colors.blue,
                                                          )),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: IconButton(
                                                            splashColor:
                                                                Colors.red,
                                                            onPressed:
                                                                () =>
                                                                    showDialog<
                                                                        String>(
                                                                      context:
                                                                          context,
                                                                      builder: (BuildContext
                                                                              context) =>
                                                                          AlertDialog(
                                                                        title: const Text(
                                                                            ' MSG'),
                                                                        content:
                                                                            const Text(' MSG'),
                                                                        actions: <Widget>[
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'Cancel'),
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'OK'),
                                                                            child:
                                                                                const Text('OK'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                            icon: const Icon(
                                                              Icons.message,
                                                              size: 30,
                                                              color:
                                                                  Colors.grey,
                                                            ))

                                                        // IconButton(

                                                        //     child: Icon(Icons.message,
                                                        //         size: 40, color: Colors.grey)),
                                                        ),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: IconButton(
                                                            splashColor:
                                                                Colors.red,
                                                            onPressed:
                                                                () =>
                                                                    showDialog<
                                                                        String>(
                                                                      context:
                                                                          context,
                                                                      builder: (BuildContext
                                                                              context) =>
                                                                          AlertDialog(
                                                                        title: const Text(
                                                                            ' CART'),
                                                                        content:
                                                                            const Text(' CART'),
                                                                        actions: <Widget>[
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'Cancel'),
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'OK'),
                                                                            child:
                                                                                const Text('OK'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                            icon: const Icon(
                                                              Icons
                                                                  .shopping_cart,
                                                              size: 30,
                                                              color: Colors.red,
                                                            ))),
                                                  ])),
                                        ],
                                      ),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ])),
          );
        })));
  }
}
