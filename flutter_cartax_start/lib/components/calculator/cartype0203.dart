import 'package:flutter/material.dart';

class CarType0203 extends StatelessWidget {
  final int kl;
  final Function changeKl;

  CarType0203(this.kl, this.changeKl);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          kl.toString() + ' Kl',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.orangeAccent[100],
                            thumbColor: Colors.orangeAccent,
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: kl.toDouble(),
                            min: 500,
                            max: 6000,
                            onChanged: (newValue) {
                              changeKl(newValue);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Text(
                                "-100",
                                style: TextStyle(
                                    color: Colors.orangeAccent[100],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                //Code Here
                                (kl >= 600 && kl <= 6000)
                                    ? changeKl((kl - 100).toDouble())
                                    : changeKl(kl.toDouble());
                              },
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Text(
                                "-10",
                                style: TextStyle(
                                    color: Colors.orangeAccent[100],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                //Code Here
                                (kl >= 510 && kl <= 6000)
                                    ? changeKl((kl - 10).toDouble())
                                    : changeKl(kl.toDouble());
                              },
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Text(
                                "-1",
                                style: TextStyle(
                                    color: Colors.orangeAccent[100],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                //Code Here
                                (kl >= 501 && kl <= 6000)
                                    ? changeKl((kl - 1).toDouble())
                                    : changeKl(kl.toDouble());
                              },
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Text(
                                "+1",
                                style: TextStyle(
                                    color: Colors.orangeAccent[100],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                (kl < 6000)
                                    ? changeKl((kl + 1).toDouble())
                                    : changeKl(kl.toDouble());
                              },
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Text(
                                "+10",
                                style: TextStyle(
                                    color: Colors.orangeAccent[100],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                //Code Here
                                (kl <= 5990)
                                    ? changeKl((kl + 10).toDouble())
                                    : changeKl(kl.toDouble());
                              },
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Text(
                                "+100",
                                style: TextStyle(
                                    color: Colors.orangeAccent[100],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                //Code Here
                                (kl <= 5900)
                                    ? changeKl((kl + 100).toDouble())
                                    : changeKl(kl.toDouble());
                              },
                              constraints: BoxConstraints.tightFor(
                                width: 50.0,
                                height: 50.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
