import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'foods/salmon.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'Healthy Food',
            style: TextStyle(
              fontSize: 23,
              color: Colors.black,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4,
                // color: Colors.red,
              ),
              insets: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
            ),
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Near By',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                'Popular',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NearByPage(),
            Recommended(),
            popular(),
          ],
        ),
      ),
    );
  }
}

class NearByPage extends StatefulWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  _NearByPageState createState() => _NearByPageState();
}

class _NearByPageState extends State<NearByPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            CarouselSlider(
              items: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SalmonSashimi(),
                      ),
                    );
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/sashimi.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 0.0,
                        child: Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white.withOpacity(0.4),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Salmon Sashimi',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                                child: Text(
                                  'This salmon sashimi is a delicious light appetizer served with fresh wasabi, ginger, soy sauce or a delicious side of soy yuzo citrus ponzu.',
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 290,
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          radius: 25,
                          child: Text(
                            'Rs. 2000',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlaskaRoll(),
                      ),
                    );
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/sushi.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 0.0,
                        child: Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white.withOpacity(0.4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Alaska Roll Sushi',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                                child: Text(
                                  'The Alaska Sushi Roll is a non-Japanese international sushi dish which includes soy sauce, wasabi, and sushi ginger.',
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 290,
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          radius: 25,
                          child: Text(
                            'Rs. 2000',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MayakEggs(),
                      ),
                    );
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/eggs.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 0.0,
                        child: Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white.withOpacity(0.4),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Mayak Eggs',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                                child: Text(
                                  'Mayak Gyeran(마약계란) a Korean name dish, translates to “drug eggs” to signify the incredibly delicious and addictive taste of these eggs,',
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 290,
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          radius: 25,
                          child: Text(
                            'Rs. 2000',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpicyTuna(),
                      ),
                    );
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/tuna.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 0.0,
                        child: Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white.withOpacity(0.4),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Spicy Tuna Crispy Rice',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 7),
                                child: Text(
                                  'This spicy tuna crispy rice combines sweet, umami spicy tuna served over creamy avocado and super crispy rice.',
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 290,
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          radius: 25,
                          child: Text(
                            'Rs. 2000',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 240.0,

                enlargeCenterPage: true,
                // autoPlay: true,
                // aspectRatio: 16 / 9,
                // autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                // autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 100,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 80,
                        child: Icon(
                          Icons.breakfast_dining,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                      Text('Breakfast'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 80,
                        child: Icon(
                          Icons.lunch_dining,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                      Text('Lunch'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 80,
                        child: Icon(
                          Icons.wine_bar,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                      Text('Beverages'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 80,
                        child: Icon(
                          Icons.local_pizza,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.black12,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                      Text('Snack'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Top Restaurants',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CarouselSlider(
              items: [
                Stack(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://media-cdn.tripadvisor.com/media/photo-s/1b/43/0f/51/naruto-japanese-food.jpg'),
                    ),
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Naruto Kitchen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1601351841251-766245326eee?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8amFwYW5lc2UlMjByZXN0YXVyYW50fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                    ),
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Ikinari Streak',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image(
                      image: NetworkImage(
                          'http://d20aeo683mqd6t.cloudfront.net/articles/title_images/000/004/102/medium/restaurants-in-japan-s787582243.jpg?2020'),
                    ),
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Kaitenzushi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://ml2u4ehjx9vm.i.optimole.com/sJT06ck-jxCY0xjL/w:1030/h:579/q:75/https://japanandmore.com/wp-content/uploads/2017/04/Ramen-Shop.jpg'),
                    ),
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Gyudon-ya',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Salmon Poké',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -55,
                  right: 225,
                  child: CircleAvatar(
                    radius: 105,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/salmon.png'),
                      ),
                    ),
                    // radius: 20,
                    // backgroundImage: AssetImage(),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Mapo tofu',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 235,
                  child: CircleAvatar(
                    radius: 85,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/mapo.png'),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ichiraku Ramen',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -110,
                  right: 240,
                  child: CircleAvatar(
                    radius: 165,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/ramen.png'),
                      ),
                    ),
                    // radius: 20,
                    // backgroundImage: AssetImage(),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'a',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -105,
                  left: 205,
                  child: CircleAvatar(
                    radius: 120,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/bibimbap.png'),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Salmon Poké',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -55,
                  right: 225,
                  child: CircleAvatar(
                    radius: 105,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/salmon.png'),
                      ),
                    ),
                    // radius: 20,
                    // backgroundImage: AssetImage(),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Mapo tofu',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 235,
                  child: CircleAvatar(
                    radius: 85,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/mapo.png'),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ichiraku Ramen',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -110,
                  right: 240,
                  child: CircleAvatar(
                    radius: 165,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/ramen.png'),
                      ),
                    ),
                    // radius: 20,
                    // backgroundImage: AssetImage(),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'a',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Chiken with Salad',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                            Text(
                              'Rs. 300',
                              style: TextStyle(
                                  // fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -105,
                  left: 205,
                  child: CircleAvatar(
                    radius: 120,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/bibimbap.png'),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}

class popular extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  bool _expanded = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  bool _expanded5 = false;
  bool _expanded6 = false;
  bool _expanded7 = false;
  bool _expanded8 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        height: 100,
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Salmon Poké",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            Text("With Rice & Teriyaki"),
                            Text("Rs. 1400"),
                          ],
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 5, 5, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.delivery_dining_rounded,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '45 mins',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            fillColor: Colors.orange,
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                    ),
                    isExpanded: _expanded,
                    canTapOnHeader: true,
                    backgroundColor: Colors.grey[200],
                  ),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded = !_expanded;
                  setState(() {});
                },
              ),
            ),
            Positioned(
              top: -55,
              right: 220,
              child: CircleAvatar(
                radius: 105,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/salmon.png'),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded2 = !_expanded2;
                  setState(() {});
                },
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                    isExpanded: _expanded2,
                    canTapOnHeader: true,
                    backgroundColor: Colors.grey[200],
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        height: 100,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mapo Tofu",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("With Steamed Rice"),
                                Text("Rs. 1000"),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            fillColor: Colors.orange,
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.delivery_dining_rounded,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '45 mins',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -35,
              left: 240,
              child: CircleAvatar(
                radius: 85,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/mapo.png'),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return Container(
                          height: 100,
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Ichiraku Ramen",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              Text("Naruto Special"),
                              Text("Rs. 800"),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 5, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow[600],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '45 mins',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              fillColor: Colors.orange,
                              child: Text(
                                'Order',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(20.0),
                              shape: CircleBorder(),
                            )
                          ],
                        ),
                      ),
                      isExpanded: _expanded3,
                      canTapOnHeader: true,
                      backgroundColor: Colors.grey[200]),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded3 = !_expanded3;
                  setState(() {});
                },
              ),
            ),
            Positioned(
              top: -108,
              right: 245,
              child: CircleAvatar(
                radius: 160,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/ramen.png'),
                  ),
                ),
                // radius: 20,
                // backgroundImage: AssetImage(),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded4 = !_expanded4;
                  setState(() {});
                },
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                    isExpanded: _expanded4,
                    canTapOnHeader: true,
                    backgroundColor: Colors.grey[200],
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        height: 100,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salmon Poké",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("Chicken with Salad"),
                                Text("Rs. 2000"),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            fillColor: Colors.orange,
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.delivery_dining_rounded,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '45 mins',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -35,
              left: 240,
              child: CircleAvatar(
                radius: 85,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/mapo.png'),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return Container(
                          height: 100,
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Salmon Poké",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              Text("Chicken with Salad"),
                              Text("Rs. 2000"),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 5, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow[600],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '45 mins',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              fillColor: Colors.orange,
                              child: Text(
                                'Order',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(20.0),
                              shape: CircleBorder(),
                            )
                          ],
                        ),
                      ),
                      isExpanded: _expanded5,
                      canTapOnHeader: true,
                      backgroundColor: Colors.grey[200]),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded5 = !_expanded5;
                  setState(() {});
                },
              ),
            ),
            Positioned(
              top: -55,
              right: 220,
              child: CircleAvatar(
                radius: 105,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/salmon.png'),
                  ),
                ),
                // radius: 20,
                // backgroundImage: AssetImage(),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded6 = !_expanded6;
                  setState(() {});
                },
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                    isExpanded: _expanded6,
                    canTapOnHeader: true,
                    backgroundColor: Colors.grey[200],
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        height: 100,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salmon Poké",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("Chicken with Salad"),
                                Text("Rs. 2000"),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            fillColor: Colors.orange,
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.delivery_dining_rounded,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '45 mins',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -35,
              left: 240,
              child: CircleAvatar(
                radius: 85,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/mapo.png'),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return Container(
                          height: 100,
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Salmon Poké",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              Text("Chicken with Salad"),
                              Text("Rs. 2000"),
                            ],
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 5, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow[600],
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow[600],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.delivery_dining_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '45 mins',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              fillColor: Colors.orange,
                              child: Text(
                                'Order',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(20.0),
                              shape: CircleBorder(),
                            )
                          ],
                        ),
                      ),
                      isExpanded: _expanded7,
                      canTapOnHeader: true,
                      backgroundColor: Colors.grey[200]),
                ],
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded7 = !_expanded7;
                  setState(() {});
                },
              ),
            ),
            Positioned(
              top: -55,
              right: 220,
              child: CircleAvatar(
                radius: 105,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/salmon.png'),
                  ),
                ),
                // radius: 20,
                // backgroundImage: AssetImage(),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ExpansionPanelList(
                dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded8 = !_expanded8;
                  setState(() {});
                },
                animationDuration: Duration(milliseconds: 500),
                children: [
                  ExpansionPanel(
                    isExpanded: _expanded8,
                    canTapOnHeader: true,
                    backgroundColor: Colors.grey[200],
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        height: 100,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salmon Poké",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("Chicken with Salad"),
                                Text("Rs. 2000"),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            fillColor: Colors.orange,
                            child: Text(
                              'Order',
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(20.0),
                            shape: CircleBorder(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.yellow[600],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.delivery_dining_rounded,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '45 mins',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -35,
              left: 240,
              child: CircleAvatar(
                radius: 85,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/mapo.png'),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
