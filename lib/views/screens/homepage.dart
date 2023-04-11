import 'package:flutter/material.dart';
import 'package:movie_database/services/weekly_releases._api.dart';
import 'package:movie_database/views/widgets/textformfield.dart';
import 'package:movie_database/views/widgets/week_releases.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: const TextFormFiledWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'WEEKS RELEASES',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffCDD0EF),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const WeekReleases(),
          ],
        ),
      ),
    );
  }
}
