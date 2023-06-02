import 'package:flutter/material.dart';
import 'package:flutter_project/presentation/components/categories_list.dart';
import 'package:flutter_project/presentation/components/coming_soon.dart';
import 'package:flutter_project/presentation/components/trending_now.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 27, 0, 0),
          Color.fromARGB(255, 0, 14, 34)
        ])),
        child: SafeArea(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Series",
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Films",
                        style: TextStyle(color: Colors.pink),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "My Lists",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ComingSoon(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const CategoriesList(categoris: [
                "All",
                "Action",
                "Comedy",
                "Romance",
                "Fanatsy",
                "Sci-Fi"
              ]),
            ),
            const Expanded(child: TrendingNow())
          ]),
        ),
      ),
    );
  }
}
