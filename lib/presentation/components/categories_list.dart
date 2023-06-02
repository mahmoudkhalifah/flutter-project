import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categoris});

  final List<String> categoris;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: Container(
              decoration: BoxDecoration(
                  color: index == 0 ? Colors.pink : Colors.grey[850],
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Text(categoris[index]),
              )),
        ),
        itemCount: categoris.length,
      ),
    );
  }
}
