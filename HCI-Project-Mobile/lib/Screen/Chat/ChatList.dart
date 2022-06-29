import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Chat/ChatScreen.dart';
import '../../Screen/Home/BottomBar.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tin Nhắn",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[400],
        elevation: 0,
        actions: [IconButton(
          icon: const Icon(Icons.search),
          onPressed: (){
            showSearch(context: context, delegate: MySearchDelegate());
          },
        )]
        
      ),
      body: Container(
        child: Column(
          children: [
            ChatItem(
              image: 'assets/images/profilepic1.jpg',
              title: "Sân Quận 5",
            ),
            ChatItem(
              image: 'assets/images/profilepic.jpg',
              title: "Sân Quân 4",
            ),
            ChatItem(
              image: 'assets/images/profilepic1.jpg',
              title: "Sân Thủ Đức",
            ),
            ChatItem(
              image: 'assets/images/profilepic.jpg',
              title: "Sân Quân 8",
            ),
            
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate{
  List<String> searchResults =[
    'Sân Thủ Đức',
    'Sân Quận 9',
    'Sân Quận 4',
    'Sân Quận 8',
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



class ChatItem extends StatelessWidget {
  final String image;
  final String title;
  const ChatItem({
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
              MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
        child: Row(
          children: <Widget>[
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                  ),
                ),
                Text("You: What's Man! . 9:40 AM ")
              ],
            ),
            Spacer(),
            Column(
              children: [Icon(Icons.check_circle_outline_rounded)],
            )
          ],
        ),
      ),
    );
  }
}
