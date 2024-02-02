import 'package:flutter/material.dart';
import 'package:listview/gridfile.dart';
import 'package:listview/listtile_navigate.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  late final TabController _tabController = TabController(length: 2, vsync: this);
  var person = ["Ram", "Ragahav", "Rahul", "Ravi", "Raghuram", "Ritesh", "Shyam", 'Madhav','Mohan', 'Mahesh', 'Manav', 'Mannu', 'Mahaveer'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.blue.withOpacity(0.50),
          title: Text("Listview Demo"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only( top: 20),
              child: Text("Discovery",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              child: TabBar(
                padding: EdgeInsets.all(1),
                controller: _tabController,
                labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "Grid View",height: 40,),
                    Tab(text: "ListView",height: 40,),
                  ]
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              height: 550,
              child: TabBarView(
                controller: _tabController,
                children: [
                InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyGrid()));
                  },
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    // ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
                      // ScrollController:
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 2, ),
                      children: [
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                        Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
                      ],
                  ),
                ),

                 // ListView in listTile
                  ListView.builder(
                    itemCount: person.length,
                      itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        onTap: (){
                        //Navigator
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ListViewDemo()));
                        },
                        title: Text(person[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
                        subtitle: Text("Hello Google"),
                        leading: Icon(Icons.person),
                          trailing: Icon(Icons.add),
                      );
                      }
                      ),
                ],
              ),
            )

          ],
        )

        // GridView(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
        //     children: [
        //         Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //       Image.network('https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_960_720.jpg'),
        //     ],
        // )
        
        
        // ListView.builder(
        //   itemCount: person.length,
        //     itemBuilder: (BuildContext context, int index){
        //     return ListTile(
        //       onTap: (){
        //       //Navigator
        //         Navigator.push(context, MaterialPageRoute(builder: (context)=> const ListViewDemo()));
        //       },
        //       title: Text(person[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
        //       subtitle: Text("Hello Google"),
        //       leading: Icon(Icons.person),
        //         trailing: Icon(Icons.add),
        //     );
        //     }
        //     ),
      ),
    );
  }
}

