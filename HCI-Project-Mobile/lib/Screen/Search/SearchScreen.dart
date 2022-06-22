import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/HomeScreen.dart';

class SearchScreen extends StatelessWidget{
  static String routeName ="/search";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "SearchScreen",
            style: TextStyle(color: Color(0xFF8D8D8D)),
        ),
        actions: [IconButton(
          icon: const Icon(Icons.search),
          onPressed: (){
            showSearch(context: context, delegate: MySearchDelegate());
          },
        )],
      ),
    );
  }
}
class MySearchDelegate extends SearchDelegate{
  List<String> searchResults =[
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
    onPressed: (){Navigator.pop(context);},
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
  IconButton(
  icon: const Icon(Icons.clear),
  onPressed: (){
    if(query.isEmpty){
      close(context, null);
    }else{
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
    List<String> suggestions = searchResults.where((searchResults){
      final results = searchResults.toLowerCase();
      final input = query.toLowerCase();
      return results.contains(input);
    }).toList();
        
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index){
      final suggestion = suggestions[index];
      return ListTile(
          title: Text(suggestion),
      onTap: (){
query = suggestion;
showResults(context);
      }
        );
    },
    );
  }
}