import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_database/models/weely_releases_model.dart';
import 'package:movie_database/services/weekly_releases._api.dart';
import 'package:movie_database/views/screens/full_activity_screen.dart';

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
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => FullScreenActivityScreen(
                          movieName: snapshot
                              .data!.results![index].originalTitle as String,
                          moviePoster: snapshot.data!.results![index].posterPath
                              as String,
                          movieDescription:
                              snapshot.data!.results![index].overview as String,
                          movieReleaseDate: snapshot
                              .data!.results![index].releaseDate as String,
                          movieRating: snapshot
                              .data!.results![index].voteAverage
                              .toString(),
                          movieLanguage: snapshot
                              .data!.results![index].originalLanguage as String,
                          movieGenre: snapshot.data!.results![index].genreIds
                              .toString(),
                          avrageVote: snapshot.data!.results![index].voteAverage
                              as double,
                          voteCount:
                              snapshot.data!.results![index].voteCount as int,
                          popularity: snapshot.data!.results![index].popularity
                              as double,
                        ),
                      );
                    },
                    child: Container(
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
