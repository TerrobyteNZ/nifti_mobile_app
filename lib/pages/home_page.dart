import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 80,
          child: Image.asset('images/nifti_logo.png'),
      ),),
      body: const Center(child: Text('Test')),
    );
  }
}