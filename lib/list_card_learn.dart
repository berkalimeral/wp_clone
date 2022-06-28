import 'package:flutter/material.dart';

class ListLearn extends StatefulWidget {
  const ListLearn({Key? key}) : super(key: key);

  @override
  State<ListLearn> createState() => _ListLearnState();
}

class _ListLearnState extends State<ListLearn> {
  late List<Deneme> denemeler;

  @override
  void initState() {
    super.initState();

    denemeler = [
      Deneme(
          imagePath: "https://picsum.photos/200",
          title: "Abstract Art",
          creator: "Alperen Sarı"),
      Deneme(
          imagePath: "https://picsum.photos/202",
          title: "Abstract Art",
          creator: "Alperen Sarı"),
      Deneme(
          imagePath: "https://picsum.photos/203",
          title: "Abstract Art",
          creator: "Alperen Sarı"),
      Deneme(
          imagePath: "https://picsum.photos/204",
          title: "Abstract Art",
          creator: "Alperen Sarı"),
      Deneme(
          imagePath: "https://picsum.photos/200",
          title: "Abstract Art",
          creator: "Alperen Sarı"),
      Deneme(
          imagePath: "https://picsum.photos/202",
          title: "Abstract Art",
          creator: "Alperen Sarı"),
      Deneme(
          imagePath: "https://picsum.photos/203",
          title: "Abstract Art",
          creator: "Alperen Sarı")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: denemeler.length,
        itemBuilder: (context, index) {
          return CardWidget(
            denemeler: denemeler,
            model: denemeler[index],
          );
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.denemeler, required this.model})
      : super(key: key);

  final Deneme model;

  final List<Deneme> denemeler;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(model.imagePath),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(model.title),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_add_alt),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Creator"),
                          Text(model.creator),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.camera, color: Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Deneme {
  String imagePath;
  String title;
  String creator;

  Deneme({
    required this.imagePath,
    required this.title,
    required this.creator,
  });
}
