import 'package:flutter/material.dart';

class CarType extends StatelessWidget {
  final int typeIndex;
  final Function changeCarType;
  CarType(this.typeIndex, this.changeCarType);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (typeIndex == 1)
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => changeCarType(1),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/car.png'),
                        ),
                      ),
                      Text(
                        "Car",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (typeIndex == 2)
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => changeCarType(2),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/truck.png'),
                        ),
                      ),
                      Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (typeIndex == 3)
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => changeCarType(3),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/van.png'),
                        ),
                      ),
                      Text(
                        "Van",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
