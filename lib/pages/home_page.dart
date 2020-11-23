import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // #header
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.4),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      padding: EdgeInsets.symmetric(vertical: 3),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                          hintText: 'Search for hotels...',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // #body
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text('Business Hotels', style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 1'),
                  makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 2'),
                  makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 3'),
                  makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 4'),
                  makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 5'),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Airport Hotels', style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 1'),
                  makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 2'),
                  makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 3'),
                  makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 4'),
                  makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 5'),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Resort Hotels', style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: 'assets/images/ic_hotel5.jpg', title: 'Hotel 1'),
                  makeItem(image: 'assets/images/ic_hotel3.jpg', title: 'Hotel 2'),
                  makeItem(image: 'assets/images/ic_hotel4.jpg', title: 'Hotel 3'),
                  makeItem(image: 'assets/images/ic_hotel1.jpg', title: 'Hotel 4'),
                  makeItem(image: 'assets/images/ic_hotel2.jpg', title: 'Hotel 5'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({String image, String title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ]
            )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
              Icon(Icons.favorite, color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }

}
