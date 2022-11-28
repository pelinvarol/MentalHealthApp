// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_app/util/emoticon_face.dart';
import 'package:mental_health_app/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  // GREETINGS ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Pelin!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Pelin!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "28 Dec, 2022",
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 25),

                  //SEARCH BAR
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(24)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  //HOW DO YOU FEEL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),

                  SizedBox(height: 25),

                  // FOUR DIFFERENT FACES
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😩"),
                          SizedBox(height: 8),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😊"),
                          SizedBox(height: 8),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //well
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😄"),
                          SizedBox(height: 8),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //excellent
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "🥳"),
                          SizedBox(height: 8),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  // EXERCISES HEADING
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Exercises",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Icon(Icons.more_horiz)
                          ],
                        ),

                        SizedBox(height: 18),
                        //LISTVIEW OF EXERCISES
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                  icon: Icons.brightness_6,
                                  exerciseTitle: "Sleep Quality",
                                  exerciseSubtitle: "10 Important Issues"),
                              ExerciseTile(
                                  icon: Icons.sports_baseball,
                                  exerciseTitle: "Sports Time",
                                  exerciseSubtitle: "25 Exercises"),
                              ExerciseTile(
                                  icon: Icons.emoji_food_beverage,
                                  exerciseTitle: "Food & Drinks",
                                  exerciseSubtitle: "15 Suggestions"),
                              ExerciseTile(
                                  icon: Icons.health_and_safety,
                                  exerciseTitle: "Appointments",
                                  exerciseSubtitle:
                                      "Two existing appointments"),
                              ExerciseTile(
                                  icon: Icons.push_pin,
                                  exerciseTitle: "Healthy Recipes",
                                  exerciseSubtitle:
                                      "Three New Flavors to Save"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
