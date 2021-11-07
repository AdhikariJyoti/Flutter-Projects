import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Chapter Reader App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
var chapterLists = [
  'Chapter 1',
  'Chapter 2',
  'Chapter 3',
  'Chapter 4',
  'Chapter 5',
  'Chapter 6',
  'Chapter 7',
  'Chapter 8',
  'Chapter 9',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter Reader App'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.builder(
            itemCount: chapterLists.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 5.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  if(chapterLists[index]=="Chapter 1"){
                    print("Chapter 1 clicked");
                  }
                  else if(chapterLists[index]=="Chapter 2"){
                    print("Chapter 2 clicked");
                  }
                },
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Icon(Icons.book,size: 40,),
                      SizedBox(height: 20,),
                      Text(chapterLists[index],style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),)],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
