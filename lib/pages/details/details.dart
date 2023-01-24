import 'package:fitness_tracker/pages/details/widgets/Steps.dart';
import 'package:fitness_tracker/pages/details/widgets/dates.dart';
import 'package:fitness_tracker/pages/details/widgets/graph.dart';
import 'package:fitness_tracker/pages/details/widgets/info.dart';
import 'package:fitness_tracker/pages/details/widgets/stats.dart';
import 'package:fitness_tracker/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text(
          'Activity',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.notifications,
              size: 20,
            ),
            
          )
        ],
      ),
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Stats(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
