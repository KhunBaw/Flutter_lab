import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> _typeImage = [
    "images/car.png",
    "images/truck.png",
    "images/van.png",
  ];

  final List<String> _type = [
    "รถยนต์ หรือ รถกระบะ 4 ประตู\n(Car)",
    "รถกระบะ 2 ประตู\n(Truck)",
    "รถตู้\n(Van)",
  ];

  final List<String> _typeDetail = [
    '''สำหรับรถยนต์ส่วนบุคคลนั่งไม่เกิน 7 คน อย่างเช่นรถเก๋งทั่วไป, รถกระบะ 4 ประตู, รถอเนกประสงค์ SUV ที่มีเบาะนั่งได้ไม่เกิน 7 คน จะมีการคำนวณค่าภาษีประจำปีจากจำนวนความจุของกระบอกสูบ คือ\n
          • 600 ซีซีแรก ซีซีละ 0.50 บาท\n
          • 601 - 1,800 ซีซี ๆ ละ 1.50 บาท\n
          • เกิน 1,800 ซีซี ๆ ละ 4.00 บาท\n\nและเมื่อรถมีการใช้งานเกินกว่า 5 ปีขึ้นไป จะมีการเสียภาษีรถยนต์ลดลงตามสัดส่วนดังนี้\n
          • ปีที่ 6 ได้ส่วนลด 10%\n
          • ปีที่ 7 ได้ส่วนลด 20%\n
          • ปีที่ 8 ได้ส่วนลด 30%\n
          • ปีที่ 9 ได้ส่วนลด 40%\n
          • ปีที่ 10 และต่อไปจนยกเลิกการใช้ ได้ส่วนลด 50%
''',
    '''สำหรับรถยนต์บรรทุกส่วนบุคคล(ไม่เกิน 7 ที่นั้ง) การคำนวณอัตราภาษีขึ้นอยู่กับน้ำหนักรถ ดังนี้
          • น้ำหนักรถตั้งแต่ 501-750 กิโลกรับ อัตราภาษี 450 บาท\n
          • น้ำหนักรถตั้งแต่ 751-1000 กิโลกรับ อัตราภาษี 600 บาท\n          
          • น้ำหนักรถตั้งแต่ 1001-1250 กิโลกรับ อัตราภาษี 750 บาท\n
          • น้ำหนักรถตั้งแต่ 1251-1500 กิโลกรับ อัตราภาษี 900 บาท\n
          • น้ำหนักรถตั้งแต่ 1501-1750 กิโลกรับ อัตราภาษี 1050 บาท\n
          • น้ำหนักรถตั้งแต่ 1751-2000 กิโลกรับ อัตราภาษี 1350 บาท\n
          • น้ำหนักรถตั้งแต่ 2001-2500 กิโลกรับ อัตราภาษี 1650 บาท\n                                                         
    ''',
    '''สำหรับรถยนต์บรรทุกส่วนบุคคล(เกิน 7 ที่นั้ง) การคำนวณอัตราภาษีขึ้นอยู่กับน้ำหนักรถ ดังนี้
          • น้ำหนักรถไม่เกิน 1800 กิโลกรับ อัตราภาษี 1300 บาท\n
          • น้ำหนักรถเกิน 1800 กิโลกรับ อัตราภาษี 1600 บาท\n                                                                
    ''',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(20),
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              //color: Colors.black45,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[900].withOpacity(0.4),
              ),
              child: Center(
                child: Text(
                  "การคำนวณภาษีรถยนต์",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Car(this._type[0], this._typeImage[0], this._typeDetail[0]),
            SizedBox(
              height: 15,
            ),
            Car(this._type[1], this._typeImage[1], this._typeDetail[1]),
            SizedBox(
              height: 15,
            ),
            Car(this._type[2], this._typeImage[2], this._typeDetail[2]),
          ],
        ),
      ],
    );
  }
}

class Car extends StatelessWidget {
  final String _type;
  final String _typeImage;
  final String _typeDetail;

  Car(
    this._type,
    this._typeImage,
    this._typeDetail, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[900].withOpacity(0.5),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(this._typeImage),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this._type,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              this._typeDetail,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                //fontWeight: FontWeight.bold,
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
