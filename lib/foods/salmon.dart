import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../home.dart';

class SalmonSashimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sashimi.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 20,
            child: Container(
              width: 370,
              height: 100,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 260,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 420,
                  height: 300,
                  color: Colors.black26,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black54,
                              ),
                              onPressed: () {},
                              child: Text('Rs. 2000'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'This salmon sashimi is a delicious light appetizer served with fresh wasabi, ginger, soy sauce or a delicious side of soy yuzo citrus ponzu. Consuming salmon sashimi may help you lose weight and maintain a healthy body weight. In addition, the fish also helps regulate appetite-controlling hormones and can make you feel full.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 255,
                  left: 50,
                  child: Container(
                    width: 310,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Nutrition Fact',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircularPercentIndicator(
                              radius: 50,
                              animation: true,
                              animationDuration: 1500,
                              lineWidth: 5.0,
                              percent: 0.9,
                              center: new Text(
                                "119",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '119 kcal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '39% of daily calories',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.89,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('89%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Carbo',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.97,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('97%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Protein',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.83,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('83%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Fat',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 425,
                  left: 100,
                  child: SizedBox(
                    width: 220,
                    height: 40,
                    // height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AlaskaRoll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sushi.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 20,
            child: Container(
              width: 370,
              height: 100,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 260,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 420,
                  height: 300,
                  color: Colors.black26,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black54,
                              ),
                              onPressed: () {},
                              child: Text('Rs. 2000'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'This salmon sashimi is a delicious light appetizer served with fresh wasabi, ginger, soy sauce or a delicious side of soy yuzo citrus ponzu. Consuming salmon sashimi may help you lose weight and maintain a healthy body weight. In addition, the fish also helps regulate appetite-controlling hormones and can make you feel full.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 255,
                  left: 50,
                  child: Container(
                    width: 310,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Nutrition Fact',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircularPercentIndicator(
                              radius: 50,
                              animation: true,
                              animationDuration: 1500,
                              lineWidth: 5.0,
                              percent: 0.9,
                              center: new Text(
                                "79",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '79 kcal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '29% of daily calories',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.89,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('70%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Carbo',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.97,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('77%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Protein',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.83,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('65%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Fat',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 425,
                  left: 100,
                  child: SizedBox(
                    width: 220,
                    height: 40,
                    // height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MayakEggs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/eggs.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 20,
            child: Container(
              width: 370,
              height: 100,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 260,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 420,
                  height: 300,
                  color: Colors.black26,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black54,
                              ),
                              onPressed: () {},
                              child: Text('Rs. 2000'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'This salmon sashimi is a delicious light appetizer served with fresh wasabi, ginger, soy sauce or a delicious side of soy yuzo citrus ponzu. Consuming salmon sashimi may help you lose weight and maintain a healthy body weight. In addition, the fish also helps regulate appetite-controlling hormones and can make you feel full.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 255,
                  left: 50,
                  child: Container(
                    width: 310,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Nutrition Fact',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircularPercentIndicator(
                              radius: 50,
                              animation: true,
                              animationDuration: 1500,
                              lineWidth: 5.0,
                              percent: 0.9,
                              center: new Text(
                                "100",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '100 kcal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '50% of daily calories',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.89,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('60%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Carbo',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.97,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('67%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Protein',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.83,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('46%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Fat',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 425,
                  left: 100,
                  child: SizedBox(
                    width: 220,
                    height: 40,
                    // height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SpicyTuna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tuna.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 20,
            child: Container(
              width: 370,
              height: 100,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 260,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 420,
                  height: 300,
                  color: Colors.black26,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black54,
                              ),
                              onPressed: () {},
                              child: Text('Rs. 2000'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'This salmon sashimi is a delicious light appetizer served with fresh wasabi, ginger, soy sauce or a delicious side of soy yuzo citrus ponzu. Consuming salmon sashimi may help you lose weight and maintain a healthy body weight. In addition, the fish also helps regulate appetite-controlling hormones and can make you feel full.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 255,
                  left: 50,
                  child: Container(
                    width: 310,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Nutrition Fact',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircularPercentIndicator(
                              radius: 50,
                              animation: true,
                              animationDuration: 1500,
                              lineWidth: 5.0,
                              percent: 0.9,
                              center: new Text(
                                "110",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '110 kcal',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '55% of daily calories',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.89,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('60%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Carbo',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.97,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('56%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Protein',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LinearPercentIndicator(
                              width: 200,
                              animation: true,
                              lineHeight: 6.0,
                              animationDuration: 1000,
                              percent: 0.83,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.orange,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('33%'),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Fat',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 425,
                  left: 100,
                  child: SizedBox(
                    width: 220,
                    height: 40,
                    // height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
