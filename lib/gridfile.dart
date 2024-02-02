import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Page "),
        centerTitle: true,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      body: Container(

          child: Center(
            child: Hero(
              tag: 'background',
              child: Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),

            ),
          ),
        ),
    );
  }
}
