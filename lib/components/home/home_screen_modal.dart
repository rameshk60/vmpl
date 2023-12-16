import 'package:flutter/material.dart';
import 'package:varun_new_project/components/bookings/bookings_ui.dart';
import 'package:varun_new_project/components/enquiry/create_new_enquiry.dart';
import 'package:varun_new_project/components/customer/upload_kyc.dart';

class DummyMenu {
  DummyMenu(
      {required this.title,
      required this.icon,
      this.uiComponent,
      required this.imageUrl});
  final String title;
  Widget? uiComponent;
  final IconData icon;
  String imageUrl;
}

List<DummyMenu> dummyMenus = <DummyMenu>[
  DummyMenu(
      title: 'Enquiry',
      uiComponent: NewEnquiry(),
      icon: Icons.assignment_ind_rounded,
      imageUrl: "NewEnquiry()"),
  DummyMenu(
      title: 'Customer',
      icon: Icons.microwave_outlined,
      uiComponent: const UploadDoccuments(),
      imageUrl: 'KYC'),
  DummyMenu(
      title: 'Bookings',
      icon: Icons.library_books,
      uiComponent: BookingsUIScreen(),
      imageUrl: " NewEnquiry()"),
  DummyMenu(
      title: 'Refunds',
      icon: Icons.monetization_on_outlined,
      imageUrl: " NewEnquiry()"),
  DummyMenu(title: 'Accessories', icon: Icons.api, imageUrl: " NewEnquiry()"),
  DummyMenu(
      title: 'Vehicle Allotment',
      icon: Icons.car_rental_rounded,
      imageUrl: "NewEnquiry()"),
  DummyMenu(
      title: 'Inventory', icon: Icons.assignment_add, imageUrl: "NewEnquiry()"),
  DummyMenu(
      title: 'Delivery Receipt',
      icon: Icons.departure_board_outlined,
      imageUrl: "NewEnquiry()"),
  DummyMenu(title: 'more', icon: Icons.menu_book, imageUrl: "NewEnquiry()"),
];

class MenuData {
  MenuData(this.icon, this.title, this.imageUrl);
  final IconData icon;
  final String title;
  final String imageUrl;
}

final List<MenuData> menu = [
  MenuData(Icons.assignment_ind_rounded, 'Enquiry', "NewEnquiry()"),
  MenuData(Icons.perm_identity_rounded, 'Customer', "NewEnquiry()"),
  MenuData(Icons.library_books, 'Bookings', "NewEnquiry()"),
  MenuData(Icons.monetization_on_outlined, 'Refunds', "NewEnquiry()"),
  MenuData(Icons.api, 'Accessories', "NewEnquiry()"),
  MenuData(Icons.car_rental_rounded, 'Vehicle Allotment', "NewEnquiry()"),
  MenuData(Icons.assignment_add, 'Inventory', "NewEnquiry()"),
  MenuData(Icons.departure_board_outlined, 'Delivery Receipt', "NewEnquiry()"),
  MenuData(Icons.view_list, 'more', "NewEnquiry()"),
];
