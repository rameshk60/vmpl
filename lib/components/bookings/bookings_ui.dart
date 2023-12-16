import 'package:flutter/material.dart';
import 'package:varun_new_project/components/bookings/bookings_model.dart';
import 'package:varun_new_project/components/bookings/new_bookings.dart';

class BookingsUIScreen extends StatefulWidget {
  const BookingsUIScreen({super.key});

  @override
  State<BookingsUIScreen> createState() => _BookingsUIScreenState();
}

class _BookingsUIScreenState extends State<BookingsUIScreen> {
  final DateTime currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: backPage,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("My Bookings"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                bookingsCard(),
                FloatingActionButton(onPressed: () {
                  Icon(Icons.add);
                  // searchEnquiry();
                })
              ],
            ),
          ),
        ));
  }

  // Widget searchEnquiry() {
  //   return Container(
  //       child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: SearchAnchor(
  //               builder: (BuildContext context, SearchController controller) {
  //             return SearchBar(
  //               controller: controller,
  //               padding: const MaterialStatePropertyAll<EdgeInsets>(
  //                   EdgeInsets.symmetric(horizontal: 16.0)),
  //               onTap: () {
  //                 controller.openView();
  //               },
  //               onChanged: (_) {
  //                 controller.openView();
  //               },
  //               leading: const Icon(Icons.search),
  //               trailing: <Widget>[
  //                 Tooltip(
  //                   message: 'Change brightness mode',
  //                   child: IconButton(
  //                     // isSelected: isDark,
  //                     onPressed: () {
  //                       setState(() {});
  //                     },
  //                     icon: const Icon(Icons.wb_sunny_outlined),
  //                     selectedIcon: const Icon(Icons.brightness_2_outlined),
  //                   ),
  //                 )
  //               ],
  //             );
  //           })));
  // }

  Widget bookingsCard() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: List.generate(getBookinglistData().length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: Container(
                color: (index % 2 == 0) ? Colors.white60 : Colors.blue.shade50,
                height: 300,
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                    child: Image.asset('assets/images/12.png'),
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
                                      getBookinglistData()
                                          .elementAt(index)
                                          .nameOfTheCstomer
                                          .toString(),
                                      style: const TextStyle(fontSize: 25),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text("06-12-2023", style: TextStyle(fontSize: 20))
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 10),
                          child: Row(
                            children: [
                              const Text(
                                "Booking ID :",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                getBookinglistData()
                                    .elementAt(index)
                                    .bookingId
                                    .toString(),
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.blue),
                              ),
                            ],
                          ),
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
                                      const Text(
                                        "Vehicle Details :",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        getBookinglistData()
                                            .elementAt(index)
                                            .vehicleDetails
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Variant :",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        getBookinglistData()
                                            .elementAt(index)
                                            .variant
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Color :",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        getBookinglistData()
                                            .elementAt(index)
                                            .carColor
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.blue),
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
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: IconButton(
                                  splashColor: Colors.red,
                                  onPressed: () => showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text(' WECHAT'),
                                          content: const Text(' WECHAT'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  context, 'Cancel'),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      ),
                                  icon: const Icon(
                                    Icons.wechat,
                                    size: 30,
                                    color: Colors.green,
                                  ))),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(
                                splashColor: Colors.red,
                                onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(' Phone'),
                                        content: const Text(' Phone'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
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
                              padding: const EdgeInsets.all(10.0),
                              child: IconButton(
                                  splashColor: Colors.red,
                                  onPressed: () => showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text(' MSG'),
                                          content: const Text(' MSG'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  context, 'Cancel'),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      ),
                                  icon: const Icon(
                                    Icons.message,
                                    size: 30,
                                    color: Colors.grey,
                                  ))

                              // IconButton(

                              //     child: Icon(Icons.message,
                              //         size: 40, color: Colors.grey)),
                              ),
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: IconButton(
                                  splashColor: Colors.red,
                                  onPressed: () => showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text(' CART'),
                                          content: const Text(' CART'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  context, 'Cancel'),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      ),
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                    size: 30,
                                    color: Colors.red,
                                  )))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Future<bool> backPage() async {
    // return widget.nextPageTo!(null ?? '', ATLStringConstants.STAFF_HOME_MATERIAL_REPORT_PAGE);
    return true;
  }
}
