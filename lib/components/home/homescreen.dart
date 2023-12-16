import 'package:flutter/material.dart';
import 'package:varun_new_project/components/accessories/accessories.dart';
import 'package:varun_new_project/components/bookings/bookings_ui.dart';
import 'package:varun_new_project/components/deliveryreceipt/delivery_ui.dart';
import 'package:varun_new_project/components/enquiry/create_new_enquiry.dart';
import 'package:varun_new_project/components/enquiry/enquiry_list.dart';
import 'package:varun_new_project/components/home/home_screen_modal.dart';
import 'package:varun_new_project/components/inventory/inventory_ui.dart';
import 'package:varun_new_project/components/customer/upload_kyc.dart';
import '../../util/bottom_sheet.dart';
import 'package:varun_new_project/components/refunds/refunds_ui.dart';
import 'package:varun_new_project/components/vehicleallotment/vehicle_allotment_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<DummyMenu> dummyMenus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(child: bannerSection()),
            gridDemo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("object");
        BottomNavigation();
      }),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.blue.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 20.0,
                top: 0.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        print("123456789");
                        // BottomNavigation();
                      },
                      icon: const Icon(
                        Icons.abc,
                        color: Colors.amber,
                        size: 30,
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 35,
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardMenus() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Card(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.assignment_ind_rounded,
                              size: 50,
                              color: Colors.amber,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Enquiry",
                                style: TextStyle(
                                    color: Colors.blue.shade900, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const EnquiryStatus()),
                              // );
                            },
                            icon: const Icon(Icons.assignment_ind_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Enquiry",
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const EnquiryStatus()),
                              // );
                            },
                            icon: const Icon(Icons.assignment_ind_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Enquiry",
                              style: TextStyle(
                                  color: Colors.blue.shade900, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(Icons.library_books),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Bookings",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(Icons.monetization_on_outlined),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Refunds",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(Icons.api_outlined),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Accessories",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(Icons.car_rental_outlined),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Vehicle Allotment",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(Icons.assignment_add),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Inventory",
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Icon(Icons.departure_board_outlined),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "Delivery Receipt",
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget gridDemo() {
    return Container(
        child: Scrollbar(
      thickness: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Container(
            width: 650,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: menu.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.blue.shade50,
                        elevation: 0.2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const EnquiryList()));
                            } else if (index == 1) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const UploadDoccuments()));
                            } else if (index == 2) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const BookingsUIScreen()));
                            } else if (index == 3) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RefundUIPage()));
                            } else if (index == 4) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const AccessoriesUIPage()));
                            } else if (index == 5) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const VehicleUIPage()));
                            } else if (index == 6) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const InventoryUIPage()));
                            } else if (index == 7) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const DeliveryUIPage()));
                            } else if (index == 8) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const NewEnquiry()));
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                menu[index].icon,
                                size: 50,
                                color: Colors.blue.shade900,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                menu[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue.shade900),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  Widget bannerSection() {
    return Column(
      children: <Widget>[
        Container(
          height: 350,
          decoration: const BoxDecoration(),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: -300,
                right: 50,
                child: Container(
                  width: 930,
                  height: 650,
                  decoration: ShapeDecoration(
                      color: Colors.blue.shade100, shape: const OvalBorder()),
                ),
              ),
              Positioned(
                top: -300,
                left: 50,
                child: Container(
                  width: 930,
                  height: 650,
                  decoration: const ShapeDecoration(
                      color: Color.fromARGB(136, 105, 181, 243),
                      shape: OvalBorder()),
                ),
              ),
              Positioned(
                top: -300,
                child: Container(
                  width: 930,
                  height: 600,
                  decoration: const ShapeDecoration(
                      color: Colors.blue, shape: OvalBorder()),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 300,
                        ),
                        Padding(
                          padding: EdgeInsets.all(50),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.menu,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.notifications,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/12.png',
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Welcome Mr.Varun",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
