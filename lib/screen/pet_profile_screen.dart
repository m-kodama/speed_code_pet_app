import 'package:flutter/material.dart';

class PetProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).viewPadding.top,
            bottom: MediaQuery.of(context).viewPadding.bottom,
            left: 32,
            right: 32,
          ),
          child: Container(),
        ),
      ),
    );
  }
}
