import 'package:flutter/material.dart';
import 'package:task1/screens/Discover.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
        backgroundColor: Color.fromRGBO(244, 13, 131, 1)
      ),

body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage("assets/images/news.jpg"),
            fit: BoxFit.fill,
            
          ),
        ),
        
      ),
       floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Discover()));
        },
        child: Icon(Icons.forward, color: Color.fromARGB(255, 255, 255, 255)),
        backgroundColor:Color.fromRGBO(244, 13, 131, 1) ,
        
       )
    );
  }
}

