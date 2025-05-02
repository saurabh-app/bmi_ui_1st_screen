import 'package:flutter/material.dart';
import 'package:ui_of_1st_screen/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: darkBlueColor,
      ),
      backgroundColor: darkBlueColor,

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Colour: blueColor,),
                ),
                Expanded(
                  child: ReusableCard(Colour: blueColor, ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(Colour: blueColor,),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Colour: blueColor,),
                ),
                Expanded(
                  child: ReusableCard(Colour: blueColor,),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(10),
      ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
   ReusableCard({
   required this.Colour
  });

Color Colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
