import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          title: Center(
          child: Text("ECOM APP UI",
           style: TextStyle(
             fontSize: 20,
             color: Colors.black,
             fontWeight: FontWeight.bold
           ),
           ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications,color: Colors.black,),
        )],
          ),
          body:Home(),
          bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home, color: Colors.purple,size: 40,),
           label: ""
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.favorite,color: Colors.purple,size: 40,),
           label: ""
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.search,color: Colors.purple,size: 40,),
           label: ""
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.add_shopping_cart,color: Colors.purple,size: 40,),
           label: ""
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person,color: Colors.purple,size: 40,),
           label: ""
         )
       ],
     ),     
        ),
      debugShowCheckedModeBanner: false,
    );
  }
}
