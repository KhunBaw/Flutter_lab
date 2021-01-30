import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[900].withOpacity(0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 300,
            image: AssetImage('images/logocomsci.jpg'),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\nComputer Science\nFaculty of Science and Technology\nRajabhat Songkhla University",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "\nContact Us",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
          ),
          Container(
            child: Text(
              "website: cs.skru.ac.th\nfacebook.com/ComputerSciSKRU",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
