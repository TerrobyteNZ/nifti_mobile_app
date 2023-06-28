import 'package:flutter/material.dart';
import 'package:nifti_app/pages/home_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}
  
class _WidgetTreeState extends State<WidgetTree> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
        NavigationDestination(icon: Icon(Icons.format_list_bulleted_rounded), label: 'Contacts'),
        NavigationDestination(icon: Icon(Icons.add_circle), label: 'Scan'),
        NavigationDestination(icon: Icon(Icons.person_pin_rounded), label: 'Profile'),
      ],
      selectedIndex: currentPage,
      onDestinationSelected:(int value) {
        setState(() {
          currentPage = value;
        });
      },
      ),
    );
  }
}