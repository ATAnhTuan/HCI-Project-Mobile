import 'package:flutter/material.dart';
import '../../Screen/Home/Santhuduc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Center(
          child: Text(
            "Tìm kiếm",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
          )
        ],
      ),
      body: Column(
        children: const [
          ListItem(
            image: 'assets/images/govap.jpg',
            title: "  Sân Quân Gò Vấp",
          ),
          ListItem(
            image: 'assets/images/quan9.jpg',
            title: "  Sân Quận 9",
          ),
          ListItem(
            image: 'assets/images/quan1.jpg',
            title: "  Sân Quận 1",
          ),
          ListItem(
            image: 'assets/images/quan5.jpg',
            title: "  Sân Quận 5",
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  const ListItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FootballField()));
        },
        child: Row(
          children: <Widget>[
            Column(
              children: [
                ClipRRect(
                  child: Image.asset(
                    image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: const [
                    Text("   2 Km  "),
                    Text("4.5"),
                    Icon(Icons.star_outlined,color: Colors.yellow,) 
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.monetization_on_outlined),
                    Text("  200.000  VND"),
                  ],
                )
              ],
            ),
            Spacer(),
            Column(
              children: const [Icon(Icons.favorite_border_outlined)],
            )
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Sân Thủ Đức',
    'Sân Quận 9',
    'Sân Quận 2',
    'Sân Quận 4',
    'Sân Quận 1',
    'Sân Bình Thạnh',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final results = searchResults.toLowerCase();
      final input = query.toLowerCase();
      return results.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            });
      },
    );
  }
}
