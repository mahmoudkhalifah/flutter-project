import 'package:flutter/material.dart';
import 'package:flutter_project/constants/constants.dart';

import '../../models/movie.dart';

class CarsouselItem extends StatelessWidget {
  const CarsouselItem(
      {super.key, required this.movie, required this.isSelected});
  final Movie movie;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                "${APIConstants.imgPath}/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
                fit: BoxFit.cover,
              )),
        ),
        isSelected
            ? Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (movie.adult ?? false)
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[850]),
                            child: const Text(
                              "18+",
                            ),
                          ),
                        if (movie.voteAverage != null)
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[850]),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '${movie.voteAverage}',
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                    Text(
                      movie.title!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 16),
                      maxLines: 2,
                    ),
                  ],
                ))
            : const SizedBox()
      ],
    );
  }
}
