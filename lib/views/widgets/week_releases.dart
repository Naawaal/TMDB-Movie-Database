import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_database/models/weely_releases_model.dart';
import 'package:movie_database/services/weekly_releases._api.dart';

class WeekReleases extends StatelessWidget {
  const WeekReleases({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 250,
      child: FutureBuilder<WeeklyReleasesModel>(
        future: WeeklyReleasesServices().weeklyReleasesAPi(),
        builder: (context, AsyncSnapshot<WeeklyReleasesModel> snapshot) {
          return ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500${snapshot.data!.results![index].posterPath}',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 150,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        snapshot.data!.results![index].originalTitle as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ).marginOnly(left: 10),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
