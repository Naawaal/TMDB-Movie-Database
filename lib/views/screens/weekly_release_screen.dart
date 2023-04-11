import 'package:flutter/material.dart';
import 'package:movie_database/views/widgets/weekly_release_grid.dart';

class WeeklyReleaseScreen extends StatelessWidget {
  const WeeklyReleaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'WEEKS RELEASES',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffCDD0EF),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: const WeeklyReleaseGrid(),
    );
  }
}
