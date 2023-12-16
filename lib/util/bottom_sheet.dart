import 'package:flutter/material.dart';
import 'package:varun_new_project/components/accessories/accessories.dart';
import 'package:varun_new_project/components/bookings/bookings_ui.dart';
import 'package:varun_new_project/components/customer/upload_kyc.dart';
import 'package:varun_new_project/components/deliveryreceipt/delivery_ui.dart';
import 'package:varun_new_project/components/enquiry/create_new_enquiry.dart';
import 'package:varun_new_project/components/enquiry/enquiry_list.dart';
import 'package:varun_new_project/components/inventory/inventory_ui.dart';
import 'package:varun_new_project/components/refunds/refunds_ui.dart';
import 'package:varun_new_project/components/vehicleallotment/vehicle_allotment_ui.dart';

import '../components/home/home_screen_modal.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  late List<DummyMenu> dummyMenus;
  late AnimationController animationController;
  late Animation degOneTranslationAnimation,
      degTwoTranslationAnimation,
      degThreeTranslationAnimation;
  late Animation rotationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0),
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("123123123");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            bannerSection(),
            gridDemo(),
            Container(
              width: size.width,
              height: 250,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      right: 30,
                      bottom: 150,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          IgnorePointer(
                            child: Container(
                              color: Colors.transparent,
                              height: 100.0,
                              width: 100.0,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset.fromDirection(
                                getRadiansFromDegree(360),
                                degOneTranslationAnimation.value * 100),
                            child: Transform(
                              transform: Matrix4.rotationZ(
                                  getRadiansFromDegree(rotationAnimation.value))
                                ..scale(degOneTranslationAnimation.value),
                              alignment: Alignment.center,
                              child: CircularButton(
                                color: Colors.blue,
                                width: 50,
                                height: 50,
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onClick: () {
                                  print('First Button');
                                },
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset.fromDirection(
                                getRadiansFromDegree(270),
                                degTwoTranslationAnimation.value * 100),
                            child: Transform(
                              transform: Matrix4.rotationZ(
                                  getRadiansFromDegree(rotationAnimation.value))
                                ..scale(degTwoTranslationAnimation.value),
                              alignment: Alignment.center,
                              child: CircularButton(
                                color: Colors.black,
                                width: 50,
                                height: 50,
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                onClick: () {
                                  print('Second button');
                                },
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset.fromDirection(
                                getRadiansFromDegree(180),
                                degThreeTranslationAnimation.value * 100),
                            child: Transform(
                              transform: Matrix4.rotationZ(
                                  getRadiansFromDegree(rotationAnimation.value))
                                ..scale(degThreeTranslationAnimation.value),
                              alignment: Alignment.center,
                              child: CircularButton(
                                color: Colors.orangeAccent,
                                width: 50,
                                height: 50,
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                onClick: () {
                                  print('Third Button');
                                },
                              ),
                            ),
                          ),
                          Transform(
                            transform: Matrix4.rotationZ(
                                getRadiansFromDegree(rotationAnimation.value)),
                            alignment: Alignment.center,
                            child: CircularButton(
                              color: Colors.red,
                              width: 60,
                              height: 60,
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onClick: () {
                                if (animationController.isCompleted) {
                                  animationController.reverse();
                                } else {
                                  animationController.forward();
                                }
                              },
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 229, 229, 229),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.blue.shade800,
                    size: 35,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20.0,
                top: 0.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.blue.shade800,
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.abc,
                        color: Colors.blue.shade900,
                        size: 30,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.work_history_outlined,
                    color: Colors.blue.shade800,
                    size: 35,
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(color: Colors.blue.shade800),
                  )
                ],
              ),
            ),
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

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton(
      {required this.color,
      required this.width,
      required this.height,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(
          icon: icon,
          enableFeedback: true,
          onPressed: () {
            print("FirstButton");
            onClick();
          }),
    );
  }
}
