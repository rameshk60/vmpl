import 'package:flutter/material.dart';
import 'package:varun_new_project/components/bookings/tabs/accesories.dart';
import 'package:varun_new_project/components/bookings/tabs/add_ons.dart';
import 'package:varun_new_project/components/bookings/tabs/customer_tab_ui.dart';
import 'package:varun_new_project/components/bookings/tabs/doccuments.dart';
import 'package:varun_new_project/components/bookings/tabs/payments.dart';
import 'package:varun_new_project/components/bookings/tabs/vehicle_details.dart';

class NewBookings extends StatefulWidget {
  const NewBookings({super.key});

  @override
  State<NewBookings> createState() => _NewBookingsState();
}

class _NewBookingsState extends State<NewBookings>
    with SingleTickerProviderStateMixin {
  int? index;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 7);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  // static const List<Tab> myTabs = <Tab>[
  //   Tab(text: 'Customer'),
  //   Tab(text: 'Vehicle'),
  //   Tab(text: 'Documents'),
  //   Tab(text: 'Payments'),
  //   Tab(text: 'Accessories'),
  //   Tab(text: 'Addons'),
  //   Tab(text: 'Discounts'),
  // ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              toolbarHeight: 100,
              title: const Text(
                "Booking Details",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              bottom: TabBar(
                indicatorColor: Colors.blue,
                controller: _tabController,
                indicatorWeight: 5,
                isScrollable: true,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Tab(
                      child: Text(
                        'Customer',
                        style: TextStyle(
                            fontSize: 20,
                            color: (_tabController.index == 0)
                                ? Colors.blue
                                : Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      child: Text('Vehicle',
                          style: TextStyle(
                              fontSize: 20,
                              color: (_tabController.index == 1)
                                  ? Colors.blue
                                  : Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Tab(
                      child: Text('Documents',
                          style: TextStyle(
                              fontSize: 20,
                              color: (_tabController.index == 2)
                                  ? Colors.blue
                                  : Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Tab(
                      child: Text('Payments',
                          style: TextStyle(
                              fontSize: 20,
                              color: (_tabController.index == 3)
                                  ? Colors.blue
                                  : Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Tab(
                      child: Text('Accessories',
                          style: TextStyle(
                              fontSize: 20,
                              color: (_tabController.index == 4)
                                  ? Colors.blue
                                  : Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Tab(
                      child: Text('Addons',
                          style: TextStyle(
                              fontSize: 20,
                              color: (_tabController.index == 5)
                                  ? Colors.blue
                                  : Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Tab(
                      child: Text('Discounts',
                          style: TextStyle(
                              fontSize: 20,
                              color: (_tabController.index == 6)
                                  ? Colors.blue
                                  : Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                CustomeTabUIPgae(),
                VehicleDetails(),
                DoccumentsUIPage(),
                PaymentUIPage(),
                AccesoriesUIPage(),
                AddonsUIPage(),
              ],
            )),
      ),
    );
  }
}
