import 'package:flutter/material.dart';
import 'package:varun_new_project/components/bookings/bookings_ui.dart';
import 'package:varun_new_project/components/enquiry/create_new_enquiry.dart';
import 'package:varun_new_project/components/customer/upload_kyc.dart';

class VmplMenuElement {
  String appBarTitle;
  String displayName;
  Widget? uiComponent;
  Icon? icon;
  List<VmplMenuElement>? children;
  VmplMenuElement(
      {required this.appBarTitle,
      required this.displayName,
      this.uiComponent,
      this.icon,
      this.children});
}

List<VmplMenuElement> salesMenuElement = [
  VmplMenuElement(
      appBarTitle: 'Enquiry',
      displayName: 'Enquiry',
      uiComponent: NewEnquiry(),
      icon: Icon(Icons.assignment_ind_rounded)),
  VmplMenuElement(
      appBarTitle: 'Customer',
      displayName: 'Customer',
      uiComponent: UploadDoccuments(),
      icon: Icon(Icons.perm_identity_rounded)),
  VmplMenuElement(
      appBarTitle: 'Bookings',
      displayName: 'Bookings',
      uiComponent: BookingsUIScreen(),
      icon: Icon(Icons.library_books)),
  VmplMenuElement(
      appBarTitle: 'Refunds',
      displayName: 'Refunds',
      uiComponent: NewEnquiry(),
      icon: Icon(Icons.monetization_on_outlined)),
  VmplMenuElement(
      appBarTitle: 'Accessories',
      displayName: 'Accessories',
      uiComponent: NewEnquiry(),
      icon: Icon(Icons.api))
];
















// //////    PRINCIPAL        /////
// List<AgSideNavElement> principalNavElements = [
//   AgSideNavElement(displayName: 'Home', appBarTitle: 'Home', uiComponent: StaffHomeMain(appBarTitle: "Home"), icon: Icon(Icons.home)),
//   AgSideNavElement(displayName: 'School Management', appBarTitle: 'School Management', icon: Icon(Icons.school), children: [
//     AgSideNavElement(displayName: 'Teacher', appBarTitle: 'Teacher', uiComponent: StaffAddEditClassesUI(appBarTitle: "Staff Management")),
//     AgSideNavElement(displayName: 'Student', appBarTitle: 'Student', uiComponent: StudentActiveDeActiveUI(appBarTitle: "Student Management"))
//   ]),
//   AgSideNavElement(displayName: 'Learn -o- Pedia', appBarTitle: 'L-o-P', icon: Icon(Icons.book), children: [
//     AgSideNavElement(displayName: 'Cumulative Report', appBarTitle: 'Cumulative Report', uiComponent: StaffReports(appBarTitle: "Cumulative Report")),
//     AgSideNavElement(displayName: 'SRS / CLIP', appBarTitle: 'SRS / CLIP', uiComponent: StaffReports(appBarTitle: "Exam-Wise-Report")),
//     AgSideNavElement(displayName: 'Staff Wise Report', appBarTitle: 'Staff Wise Report', uiComponent: TeacherAssessment(appBarTitle: "Teacher Wise Report")),
//     AgSideNavElement(displayName: 'Student Wise Report', appBarTitle: 'Student Wise Report', uiComponent: StudentAssessmentReport(appBarTitle: "Student Wise Report"))
//   ]),
//   AgSideNavElement(displayName: 'Tools Usage', appBarTitle: 'Tools Usage', uiComponent: StudentToolsUsageReportForStaff(appBarTitle: "Tools Usage Report"), icon: Icon(Icons.build)),
//   AgSideNavElement(displayName: 'Attendance', appBarTitle: 'Attendance', icon: Icon(Icons.bookmark), children: [
//     AgSideNavElement(displayName: 'Add', appBarTitle: 'Add', uiComponent: StaffAttendence(appBarTitle: "Attendance", attendenceType: "Add")),
//     AgSideNavElement(displayName: 'View', appBarTitle: 'View', uiComponent: StaffAttendence(appBarTitle: "Attendance", attendenceType: "View"))
//   ]),
//   AgSideNavElement(displayName: 'Calendar', appBarTitle: 'Calendar', icon: Icon(Icons.calendar_month), children: [
//     AgSideNavElement(displayName: 'Add Calendar', appBarTitle: 'Add Calendar', uiComponent: AcademicPlannerUI(appBarTitle: "AcademicPlanner")),
//     AgSideNavElement(displayName: 'View Calendar', appBarTitle: 'View Calendar', uiComponent: StaffAcadamicCalenderUI())
//   ]),
//   AgSideNavElement(displayName: 'Messages', appBarTitle: 'Messages', icon: Icon(Icons.message), uiComponent: ChattingTabs()),
//   AgSideNavElement(displayName: 'Profile', appBarTitle: 'Profile', uiComponent: ATLProfilePage(), icon: Icon(Icons.settings)),
// ];

// //////    STAFF        /////
// List<AgSideNavElement> staffNavElements = [
//   AgSideNavElement(displayName: 'Home', appBarTitle: 'Home', uiComponent: StaffHomeMain(appBarTitle: "Home"), icon: Icon(Icons.home)),
//   AgSideNavElement(displayName: 'Learn -o- Pedia', appBarTitle: 'L-o-P', icon: Icon(Icons.book), children: [
//     AgSideNavElement(
//       displayName: 'Cumulative Report',
//       appBarTitle: 'Cumulative Report',
//       uiComponent: StaffReports(appBarTitle: "Cumulative Report"),
//     ),
//     AgSideNavElement(displayName: 'SRS / CLIP', appBarTitle: 'SRS / CLIP', uiComponent: StaffReports(appBarTitle: "Exam-Wise-Report")),
//   ]),
//   AgSideNavElement(displayName: 'Tools Usage', appBarTitle: 'Tools Usage', uiComponent: StudentToolsUsageReportForStaff(appBarTitle: "Tools Usage Report"), icon: Icon(Icons.build)),
//   AgSideNavElement(displayName: 'Attendance', appBarTitle: 'Attendance', icon: Icon(Icons.book), children: [
//     AgSideNavElement(displayName: 'Add', appBarTitle: 'Add', uiComponent: StaffAttendence(appBarTitle: "Attendance", attendenceType: "Add")),
//     AgSideNavElement(displayName: 'View', appBarTitle: 'View', uiComponent: StaffAttendence(appBarTitle: "Attendance", attendenceType: "View"))
//   ]),
//   AgSideNavElement(displayName: 'Calendar', appBarTitle: 'View Calendar', uiComponent: StaffAcadamicCalenderUI(), icon: Icon(Icons.calendar_month)),
//   AgSideNavElement(displayName: 'Messages', appBarTitle: 'Messages', uiComponent: ChattingTabs(), icon: Icon(Icons.message)),
//   AgSideNavElement(displayName: 'Profile', appBarTitle: 'Profile', uiComponent: ATLProfilePage(), icon: Icon(Icons.settings)),
// ];

// //////    STUDENT        /////
// List<AgSideNavElement> studentNavElements = [
//   AgSideNavElement(displayName: 'Home', appBarTitle: 'Home', uiComponent: HomeMain(), icon: Icon(Icons.home)),
//   AgSideNavElement(displayName: 'Learn -o- Pedia', appBarTitle: 'L-o-P', uiComponent: LOPMainUI(), icon: Icon(Icons.book)),
//   AgSideNavElement(displayName: 'View Calendar', appBarTitle: 'Calendar', uiComponent: StudentAcadamicCalenderUI(), icon: Icon(Icons.calendar_month)),
//   AgSideNavElement(displayName: 'Messages', appBarTitle: 'Messages', uiComponent: StudentChattingTab(), icon: Icon(Icons.message)),
//   //AgSideNavElement(displayName: 'Messages', appBarTitle: 'Messages', uiComponent: StudentChattingPage(), icon: Icon(Icons.message)),
//   AgSideNavElement(displayName: 'Profile', appBarTitle: 'Profile', uiComponent: ATLProfilePage(), icon: Icon(Icons.settings)),
// ];

// //////    PARENT        /////
// List<AgSideNavElement> parentNavElements = [
//   AgSideNavElement(displayName: 'Home', appBarTitle: 'Home', uiComponent: ParentHomeMain(), icon: Icon(Icons.home)),
//   AgSideNavElement(displayName: 'Learn -o- Pedia', appBarTitle: 'L-o-P', uiComponent: LOPMainPage(), icon: Icon(Icons.book)),
//   AgSideNavElement(displayName: 'Tools Usage', appBarTitle: 'Tools Usage', uiComponent: TotalResources(), icon: Icon(Icons.build)),
//   AgSideNavElement(displayName: 'Attendance', appBarTitle: 'Attendance', uiComponent: ParentAttendance(), icon: Icon(Icons.bookmark)),
//   AgSideNavElement(displayName: 'View Calendar', appBarTitle: 'Calendar', uiComponent: ParentCalendar(), icon: Icon(Icons.calendar_month)),
//   AgSideNavElement(displayName: 'Profile', appBarTitle: 'Profile', uiComponent: ATLProfilePage(), icon: Icon(Icons.settings)),
// ];

/////    PROFILE        /////
// AgSideNavElement profile = AgSideNavElement(displayName: 'Profile', appBarTitle: 'Profile', uiComponent: ATLProfilePage(),);
//AgSideNavElement parentProfile = AgSideNavElement(displayName: 'Profile', appBarTitle: 'Profile', uiComponent: ParentProfile());
