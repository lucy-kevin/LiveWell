import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ValueListenableBuilder<bool>(
            valueListenable: _dark,
            builder: (context, color, child) {
              return ValueListenableBuilder<double>(
                valueListenable: _widthFactor,
                builder: (context, factor, child) {
                  return Scaffold(
                      backgroundColor:
                          _dark.value ? Colors.black : Colors.white,
                      appBar: AppBar(
                        actions: [
                          Switch(
                            value: _dark.value,
                            onChanged: (value) {
                              _dark.value = value;
                            },
                          ),
                          DropdownButton<double>(
                            value: _widthFactor.value,
                            onChanged: (value) {
                              _widthFactor.value = value!;
                            },
                            items: [
                              DropdownMenuItem<double>(
                                value: 0.5,
                                child: Text('Size: 50%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 0.75,
                                child: Text('Size: 75%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 1.0,
                                child: Text('Size: 100%'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      body: Center(
                          child: Container(
                        width: MediaQuery.of(context).size.width *
                            _widthFactor.value,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Iphone13141(),
                          ],
                        ),
                      )));
                },
              );
            }));
  }
}

class Iphone13141 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFF5F5F4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 47,
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 27,
                    right: 26.60,
                    bottom: 12,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.only(top: 1),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 54,
                                height: 20,
                                child: Text(
                                  '9:41',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF010101),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 77.40,
                        height: 13,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 50,
                              top: 0,
                              child: Container(
                                width: 27.40,
                                height: 13,
                                child: Stack(children: [
                                ,
                                ]),
                              ),
                            ),
                            Positioned(
                              left: 26,
                              top: 1,
                              child: Container(
                                width: 17,
                                height: 12,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://picsum.photos/17/12"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 166,
                top: 84,
                child: Text(
                  'Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF082B49),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    height: 0.02,
                    letterSpacing: 0.42,
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 391,
                child: Container(
                  height: 298,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 256,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 130,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 343,
                                    height: 58,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 15,
                                          child: Container(
                                            width: 343,
                                            height: 43,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF5F5F4),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 2.60, color: Color(0xFF4BA0ED)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 11,
                                          top: 0,
                                          child: Container(
                                            width: 147,
                                            height: 30,
                                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                                            decoration: BoxDecoration(color: Color(0xFFF5F5F4)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Cardholder’s Name',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF082B49),
                                                    fontSize: 15,
                                                    fontFamily: 'Inter',
                                                    height: 0.10,
                                                    letterSpacing: 0.19,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(
                                    width: 342,
                                    height: 58,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 15,
                                          child: Container(
                                            width: 342,
                                            height: 43,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF5F5F4),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 2.60, color: Color(0xFF4BA0ED)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 10,
                                          top: 0,
                                          child: Container(
                                            width: 104,
                                            height: 30,
                                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                                            decoration: BoxDecoration(color: Color(0xFFF5F5F4)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Card Number',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF082B49),
                                                    fontSize: 15,
                                                    fontFamily: 'Inter',
                                                    height: 0.10,
                                                    letterSpacing: 0.19,
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
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 162,
                                    height: 58,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 15,
                                          child: Container(
                                            width: 162,
                                            height: 43,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF5F5F4),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 2.60, color: Color(0xFF4BA0ED)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 15,
                                          child: Container(
                                            width: 162,
                                            height: 43,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF5F5F4),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 2.60, color: Color(0xFF4BA0ED)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 10,
                                          top: 0,
                                          child: Container(
                                            width: 52,
                                            height: 30,
                                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                                            decoration: BoxDecoration(color: Color(0xFFF5F5F4)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Expiry',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF082B49),
                                                    fontSize: 15,
                                                    fontFamily: 'Inter',
                                                    height: 0.10,
                                                    letterSpacing: 0.19,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 18),
                                  Container(
                                    width: 162,
                                    height: 58,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 15,
                                          child: Container(
                                            width: 162,
                                            height: 43,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF5F5F4),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 2.60, color: Color(0xFF4BA0ED)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 15,
                                          child: Container(
                                            width: 162,
                                            height: 43,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF5F5F4),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 2.60, color: Color(0xFF4BA0ED)),
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 10,
                                          top: 0,
                                          child: Container(
                                            width: 39,
                                            height: 30,
                                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                                            decoration: BoxDecoration(color: Color(0xFFF5F5F4)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'CVV',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF082B49),
                                                    fontSize: 15,
                                                    fontFamily: 'Inter',
                                                    height: 0.10,
                                                    letterSpacing: 0.19,
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
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Save Credit Card',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF151301),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      height: 0.10,
                                      letterSpacing: 0.19,
                                    ),
                                  ),
                                  const SizedBox(width: 167),
                                  Container(
                                    width: 46,
                                    height: 28,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF8557FB),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 26,
                                          height: 28,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1232B3),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(60),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 6,
                                                offset: Offset(6, 0),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total Price',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF151301),
                                fontSize: 15,
                                fontFamily: 'Inter',
                                height: 0.10,
                                letterSpacing: 0.19,
                              ),
                            ),
                            const SizedBox(width: 167),
                            Text(
                              'UGX 20,000',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1333B3),
                                fontSize: 28,
                                fontFamily: 'Inter',
                                height: 0.03,
                                letterSpacing: 0.36,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 5,
                top: 146,
                child: Container(
                  width: 379,
                  height: 230,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.93, -0.36),
                      end: Alignment(-0.93, 0.36),
                      colors: [Color(0xFF424FFC), Color(0xE5424FFC), Color(0xB2424FFC), Color(0xFF9342FC)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 6,
                        offset: Offset(4, 4),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 281,
                        top: 185,
                        child: Container(
                          width: 65,
                          height: 21,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://picsum.photos/65/21"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        top: 154,
                        child: Text(
                          'Valid',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xA0E8E6BB),
                            fontSize: 21,
                            fontFamily: 'Inter',
                            height: 0.05,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        top: 182,
                        child: Text(
                          '05/06',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: 'Inter',
                            height: 0.05,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        top: 28,
                        child: Text(
                          'Lucy Kevin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: 'Inter',
                            height: 0.05,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37,
                        top: 98,
                        child: Text(
                          '**** **** **** ****',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: 'Inter',
                            height: 0.05,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 772,
                child: Container(
                  width: 343,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Color(0xFF4BA0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Pay',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 91,
                child: Container(
                  width: 51,
                  height: 52,
                  padding: const EdgeInsets.symmetric(horizontal: 8.50, vertical: 8.67),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    ,
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