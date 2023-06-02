import 'package:flutter/material.dart';

import 'headline.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Headline(
          text: "Coming Soon",
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: double.infinity,
          child: Stack(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        "https://marketplace.canva.com/EAE66-fThJI/1/0/1600w/canva-dark-movie-trailer-youtube-thumbnail-Y460nmpXiXM.jpg"),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent[400],
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.play_arrow),
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("watch new film details now"),
                        Icon(Icons.send_outlined)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
