import 'package:flutter/material.dart';
import 'package:nifti_app/pages/home_page.dart';
import 'package:nifti_app/pages/contacts_page.dart';
import 'package:nifti_app/pages/profile_page.dart';

// THIS FILE CONTAINS THE LOGIC FOR THE APP'S TOP & BOTTOM NAV BAR

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}
  
class _WidgetTreeState extends State<WidgetTree> {
  // Variables
  int currentPage = 0;
  // List of page widgets 
  List<Widget> pages = const[
    ContactsPage(), 
    HomePage(), 
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top bar that contains Nifti Logo
      appBar: AppBar(
        title: SizedBox(
          width: 100,
          child: Image.asset('images/nifti_logo.png'),
      ),),
      // Body of the page
      body: pages.elementAt(currentPage),
      // Navigation Bar containing page options
      bottomNavigationBar: NavigationBar(
        destinations: const [
        NavigationDestination(icon: Icon(Icons.format_list_bulleted_rounded), label: 'Contacts'),
        NavigationDestination(icon: Icon(Icons.add_circle), label: 'Scan'),
        NavigationDestination(icon: Icon(Icons.person_pin_rounded), label: 'Profile'),
      ],
      // Logic to show selected page
      selectedIndex: currentPage,
      onDestinationSelected:(int value) {
        setState(() {
          currentPage = value;
        });
      },
      ),
    );
  }
} // END OF LOGIC