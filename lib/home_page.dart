import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> nameList = [
    "Apple",
    "Mango",
    "Orange",
    "Pineapple",
    "Strawberry",
    "Kiwi",
    "CHERY",
    "Graph",
    "Blueberry",
    "Olive",
    "Peach",
  ];
  List<String> logoList = [
    "🍎",
    "🥭",
    "🍊",
    "🍍",
    "🍓",
    "🥝",
    "🍒",
    "🍇",
    "🫐",
    "🫒",
    "🍑",
  ];
  List<String> detailList = [
    "RED APPLE",
    "HEX MANGO",
    "ORANGE",
    "YELLOW PINEAPPLE",
    "RED STRAWBERRY",
    "GREEN KIWI",
    "RED CHERY",
    "PURPLE GRAPH",
    "BLUE BERRY",
    "GREEN OLIVE",
    "ORANGE PEACH",
  ];

  List<String> d1List = [
    "Apples are high in fiber, \nvitamin C, and various antioxidants",
    "The mango is a tropical stone\nfruit and member of \nthe drupe family.",
    "The fruit is a modified berry\nknown as a hesperidium, and the flesh is divided into segments called carpels.",
    "Pineapple (Ananas comosus)\nis a tropical fruit.",
    "Strawberries are rich in \nnutrients, including \nvitamin C, fiber, potassium, \nand antioxidants",
    "Kiwi is a fruit that is \nrich in nutrients, has \na low calorie count, and is well-known for its high \nvitamin C content.",
    "The fruit is round to \noblate in shape, is \ngenerally dark red in colour, and \nhas so much acid that it is \nnot appealing for eating fresh. ",
    "Grapefruit is a natural \ncross between pomelo and orange \nand its origin dates back \nto the 18th century. ",
    "Blueberry, any of several North \nAmerican shrubs of the genus \nVaccinium (family Ericaceae), prized \nfor their sweet edible fruits.",
    "The olive (Olea europaea L.) is a \nwell-known evergreen tree, \nnative to the Mediterranean coast, \nof which the fruit and oil are \nused for food and cooking.",
    "The fruit has yellow or whitish \nflesh, a delicate aroma, and \na skin that is either velvety (peaches) \nor smooth (nectarines) in \ndifferent cultivars. ",
  ];

  int i = 0;
  int j = 0;
  int h = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: nameList.map((e) => Item(e, logoList[i++],detailList[j++],d1List[h++],context)).toList(),
      ),
    );
  }
}

Widget Item(String name, logo, detail,d1,BuildContext context) {
  return InkWell(
    onTap: () {
      List l1 = [
        logo,
        name,
        detail,
        d1,
      ];
      Navigator.pushNamed(context, "detail", arguments: l1);
    },
    child: Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Expanded(
              child: Container(
                width: 150,
                height: 45,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10), right: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text("$logo",style: const TextStyle(fontSize: 30),),
                    SizedBox(width: 10,),
                    Text("$name",style: TextStyle(fontSize: 20),),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
