import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:200 ,
      child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Icon(Icons.book),
                Text("Book")
              ],

            ),
          )

        ],
      ),
    );
  }
}

