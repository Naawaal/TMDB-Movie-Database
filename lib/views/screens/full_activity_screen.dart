import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenActivityScreen extends StatefulWidget {
  final String movieName;
  final String moviePoster;
  final String movieDescription;
  final String movieReleaseDate;
  final String movieRating;
  final String movieLanguage;
  final String movieGenre;
  final double avrageVote;
  final int voteCount;
  final double popularity;

  const FullScreenActivityScreen(
      {super.key,
      required this.movieName,
      required this.moviePoster,
      required this.movieDescription,
      required this.movieReleaseDate,
      required this.movieRating,
      required this.movieLanguage,
      required this.movieGenre,
      required this.avrageVote,
      required this.voteCount,
      required this.popularity});

  @override
  State<FullScreenActivityScreen> createState() =>
      _FullScreenActivityScreenState();
}

class _FullScreenActivityScreenState extends State<FullScreenActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.movieName,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xffCDD0EF),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 200,
              height: 250,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500${widget.moviePoster}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              child: Text(
                widget.movieDescription,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ).marginOnly(left: 10),
            ).marginAll(10),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(08),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Text(
                      'Release Date: ${widget.movieReleaseDate}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ).marginOnly(left: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(08),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Text(
                      'Rating: ${widget.movieRating}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ).marginOnly(left: 10),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(08),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Text(
                      'Language: ${widget.movieLanguage}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ).marginOnly(left: 10),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Genre: ${widget.movieGenre}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ).marginOnly(left: 10),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Avrage Vote: ${widget.avrageVote}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ).marginOnly(left: 10),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Vote Count: ${widget.voteCount}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ).marginOnly(left: 10),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Popularity: ${widget.popularity}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ).marginOnly(left: 10),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
