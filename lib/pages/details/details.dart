import 'package:fitness_tracker/pages/details/widgets/Steps.dart';
import 'package:fitness_tracker/pages/details/widgets/appbar.dart';
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
      appBar: MainAppBar(appBar: AppBar()),
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
