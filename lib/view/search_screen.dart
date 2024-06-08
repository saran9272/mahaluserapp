import 'package:flutter/material.dart';


class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final title = const[
    'marriage premium hall',
    'mini hall for birthday',
  ];
  
  final icon = const
  [
    Icons.arrow_forward_outlined,
    Icons.arrow_forward_outlined,
  ];

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextField(
          controller: searchController,
          cursorColor: Colors.green,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              border: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 2)),
              labelStyle: const TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
              hintText: 'Search here',
              prefixIcon: const Icon(Icons.search,color: Colors.black,),
            suffixIcon: GestureDetector(onTap: (){
              searchController.clear();
            },
                child: const Icon(Icons.close,color: Colors.grey,)),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.keyboard_voice_outlined,color: Colors.black,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(itemBuilder:(context,index){
    return ListTile(
    title: Text(title[index]),
    trailing:Icon(icon[index]),
    );}, separatorBuilder: (context,index){return const Divider(thickness: 1,color: Colors.black,);}, itemCount: 2),
      ),
    );
  }
}
