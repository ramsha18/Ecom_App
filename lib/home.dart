import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Text("Items", 
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30),),
              trailing: Text("View More", 
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),),
            ),
            CarouselSlider(
                items: [
                  slideitem("assets/iphone12.jpg", "Iphone 12"),
                  slideitem("assets/mercedes.jpg", "Mercedes"),
                  slideitem("assets/mcair.jpg", "Mac Air"),
                  slideitem("assets/mcpro.jpg", "Mac Pro"),
                  slideitem("assets/gaming.jpg", "Gaming PC")
            ],
              //Slider Container properties
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("More Categories", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 35),),
              )),
               CarouselSlider(
                items: [
                  moreslide(Icons.shopping_bag_outlined, "Clothes", "5 items"),
                  moreslide(Icons.bolt, "Electronics", "20 items"),
                  moreslide(Icons.chair_rounded, "Households", "9 items"),
                  moreslide(Icons.bolt, "Appliances", "25 items"),
                  moreslide(Icons.double_arrow_outlined , "Others", "125 items")
            ],
              //Slider Container properties
                options: CarouselOptions(
                  height: 100.0,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.8,
                ),
            ),
             Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Popular Items", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 35),),
              )),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        listdown("assets/iphone12.jpg", "Iphone 12"),
                        listdown("assets/note.jpg","Note 20 Ultra"),
                      ],
                    ),
                    Row(
                      children: [
                         listdown("assets/mcair.jpg","Macbook Air"),
                        listdown("assets/mcpro.jpg","Macbook Pro"),
                      ],
                    ),
                    Row(
                      children: [
                        listdown("assets/gaming.jpg","Gaming PC"),
                        listdown("assets/keyboard.jpg","Lit Keyboard"),
                      ],
                    ),
                    Row(
                      children: [
                        listdown("assets/mercedes.jpg","Mercedes"),
                        listdown("assets/iphonex.jpg","Iphone X"),
                      ],
                    )
                  ],
                )
              )
          ],
        ),
      ),
    );
  }
}

Widget listdown(var srcimage, var name)
{
  return Container(
    width: 200,
    height: 200,
    child: ListTile(
      title: Image.asset(srcimage, fit: BoxFit.cover,height: 100),
      subtitle: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(name,style: TextStyle(
              color: Colors.black, fontSize: 25),),
          ),
            Row(
              children: [
                Icon(Icons.star, size: 18,color: Colors.yellowAccent,),
                    Text("5.0 (23 Review)"),
              ],
            )
        ],
      ),
    ),
  );
}


Widget moreslide(var icon, var name, var item)
{
  return Container(
    margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white),
    child: ListTile(
      leading: Icon(icon, size: 50,color: Colors.purple,),
      title: Text(name, style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
      subtitle: Text(item,style: TextStyle(color: Colors.black),),
    ),
  );
}
Widget slideitem(var srcimg, var name)
{
  return Column(children: [
    Container(
      height: 240,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(srcimg),
          fit: BoxFit.cover
        ),
      ),
    ),
      Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white
        ),
        child: ListTile(
                  title: Text(name, style: TextStyle(
                    fontSize: 30
                  ),),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        children: [
                          Icon(Icons.star, size: 18,color: Colors.yellowAccent,),
                          Text("5.0 (23 Review)", style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ],)
                ),
      ),
  ],);
}