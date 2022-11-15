import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF179797),
        toolbarHeight: 180,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body:ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.white,
        //     actions: [
        //       IconButton(onPressed: (){
        //         showSearch(context: context, delegate: MySearch());
        //       }, icon: const Icon(Icons.search))
        //     ],
        //     //title: Text("Search Bar"),
        //     child: MySearch(),
        //   ),
        // ],
      ),

    ],),);
  }
}
// class MySearch extends SearchDelegate{
//   // this is manual list of query for suggesting user.
//   List<String> data = [
//     'A','B','C','D','E','F','G','H','I','J'
//   ];
//   @override
//   List<Widget>? buildActions(BuildContext context) => [
//     IconButton(
//       icon: const Icon(Icons.clear,color: Colors.red,),
//       onPressed: () {
//         if(query.isEmpty){
//           close(context, null);
//         }else{
//           query = '';
//         }
//       },
//     ),
//   ];
//   @override
//   Widget? buildLeading(BuildContext context) => IconButton(
//     icon: const Icon(Icons.arrow_back),
//     onPressed: () { close(context, null) ; },
//   );
//   @override
//   Widget buildResults(BuildContext context) => Center(
//     child: Text(
//       query,
//     ),
//   );
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // will show a query hint suggestion "flutter search bar with listview"
//     List<String> suggesstions = data.where((element) {
//       final result = element.toLowerCase();
//       final input = query.toLowerCase();
//       return result.contains(input);
//     }).toList();
//     return ListView.builder(
//         itemCount: suggesstions.length,
//         itemBuilder: (context,index){
//           final suggestion = suggesstions[index];
//           return ListTile(
//             title: Text(suggestion),
//             onTap: (){
//               query = suggestion;
//               showResults(context);
//             },
//           );
//         }
//     );
//   }
// }