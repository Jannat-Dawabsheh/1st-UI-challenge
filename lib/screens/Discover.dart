import 'package:flutter/material.dart';
import 'package:task1/widgets/tab.dart';
import 'package:task1/widgets/newsItems.dart';
import 'package:task1/models/news.dart';
import 'package:task1/models/list.dart';
class Discover extends StatelessWidget{
  const Discover({super.key});
    @override
  Widget build(BuildContext context) {
 
    list obj= list();
        return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8),
         // padding: EdgeInsets.only(left:20),
         height: 200,
         width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
            
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Padding
          (padding: EdgeInsets.all(16),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                   Text(
                  "News from all around the world",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 133, 131, 131),
                  ),
                ),       

                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    color:Color.fromARGB(148, 231, 231, 232),
                    borderRadius: BorderRadius.circular(20),
                 ),

                child:Row(
                 children: [
                  Icon(Icons.search, color:Color.fromARGB(147, 120, 120, 121)),
                  SizedBox(width:7),
                  Text("search",
                  style: TextStyle(   
                     fontSize: 15,
                    color: Color.fromARGB(255, 133, 131, 131), ),),
                    Spacer(),
                  Image.asset("assets/images/equalizer.png",width:20),
                 ],

                ),
                ),
                
              ],
          
            ),
          
          ), 


          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
               
                 TabWidget(
                  title: "All",
                  isActive: true,
                  onTap: () {},
                ),
                const SizedBox(width: 10), // between tabs
                for (int index = 0; index < obj.titles.length; index++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: TabWidget(title: obj.titles[index], onTap: () {}),
                  )
              ],
            ),
          ),

                    const SizedBox(height: 5),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [

                  const SizedBox(height: 20),
                  for(int i=0;i<obj.categoryList.length;i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: NewsItemCard(
                      newsItem: NewsItem(
                        image:obj.imagesList[i] ,
                        category:obj.categoryList[i], 
                        title: obj.titleList[i],
                        ownerName: obj.ownerNameList[i],
                        ownerImage:obj.ownerImageList[i], 
                        createdAt: obj.createdAtList[i],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),   
        ],

      ),

    );
  }
}