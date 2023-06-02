import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/components/carsouel_item.dart';
import '../../models/movie.dart';
import 'headline.dart';

class TrendingNow extends StatefulWidget {
  const TrendingNow({super.key});

  @override
  State<TrendingNow> createState() => _TrendingNowState();
}

class _TrendingNowState extends State<TrendingNow> {
  final List<Movie> movies = [
    Movie(
        adult: true,
        title: "test movie 1",
        releaseDate: "12-5-2020",
        backdropPath: "/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
        voteAverage: 8.7),
    Movie(
        adult: false,
        title: "test movie 2: test long name",
        releaseDate: "12-5-2020",
        posterPath: "/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
        voteAverage: 9.0),
    Movie(
        adult: false,
        title: "test movie 3",
        releaseDate: "12-5-2020",
        posterPath: "/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
        voteAverage: 7.9)
  ];
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Headline(
            text: "Trending Now",
          ),
        ),
        Expanded(
          child: CarouselSlider.builder(
            itemCount: movies.length,
            itemBuilder: (context, index, realIndex) => CarsouselItem(
              movie: movies[index],
              isSelected: _selectedIndex == index,
            ),
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              initialPage: _selectedIndex,
              viewportFraction: 0.5,
              enlargeFactor: 0.36,
              aspectRatio: 10 / 9,
              onPageChanged: (index, reason) {
                _selectedIndex = index;
                setState(() {});
              },
            ),
          ),
        )
      ],
    );
  }
}
