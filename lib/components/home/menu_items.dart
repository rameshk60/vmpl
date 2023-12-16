import 'package:flutter/material.dart';
import 'package:varun_new_project/components/home/home_screen_modal.dart';

class DashBoardIcons extends StatefulWidget {
  final Function(String, String)? nextPageTo;
  final String? appBarTitle;
  final Widget? uiComponent;
  const DashBoardIcons(
      {Key? key, required this.appBarTitle, this.nextPageTo, this.uiComponent})
      : super(key: key);

  @override
  State<DashBoardIcons> createState() => _DashBoardIconsState();
}

class _DashBoardIconsState extends State<DashBoardIcons> {
  DummyMenu? dummyevents;
  late List<DummyMenu> drawerElements;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade700,
            title: Text(
              widget.appBarTitle.toString(),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          body: widget.uiComponent,
        ),
        onWillPop: () async {
          return true;
        });
  }

  Widget loader() {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: const SizedBox(
          child: CircularProgressIndicator(
            strokeWidth: 6.0,
          ),
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
