import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: Text("User Detail", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(

              child: Text("Hello Buddy This is Navigate Page", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),)),
          ElevatedButton(
            onPressed: (){
              //  Navigator.pop
              Navigator.pop(context);

            },
            child: Text("Go Back"),
          ),
        ],
      ),
    );
  }
}
