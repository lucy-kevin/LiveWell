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
                            HomePage(),
                          ],
                        ),
                      )));
                },
              );
            }));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 302,
                top: 61,
                child: Container(
                  width: 63,
                  height: 63,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/63/63"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Color(0x8C4BA0ED)),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 85,
                child: Container(
                  width: 64,
                  height: 15,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Hi Lucy',
                                  style: TextStyle(
                                    color: Color(0xFF191716),
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    height: 0,
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
                left: 24,
                top: 122,
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
              Positioned(
                left: 26,
                top: 215,
                child: Container(
                  width: 340,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 20,
                    bottom: 10,
                  ),
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6E6FA),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0x3D4BA0ED)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 6),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'Search',
                            style: TextStyle(
                              color: Color(0xFF082B49),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              height: 0.12,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 272,
                child: Container(
                  width: 339,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Services',
                        style: TextStyle(
                          color: Color(0xFF4BA0ED),
                          fontSize: 22,
                          fontFamily: 'Inter',
                          height: 0,
                        ),
                      ),
                      const SizedBox(width: 151),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFFA3C9EB),
                          fontSize: 15,
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
                top: 144,
                child: Container(
                  width: 343,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'How can we assist\nyou today?',
                            style: TextStyle(
                              color: Color(0xFF082B49),
                              fontSize: 24,
                              fontFamily: 'Inter',
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 310,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(color: Color(0xFFE6F2FB)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE2F0FC),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xFF424FFC)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 31,
                              top: 20,
                              child: Container(
                                width: 58,
                                height: 58,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                ,
                                ]),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              top: 89,
                              child: Container(
                                width: 116,
                                height: 15,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 33,
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: SizedBox(
                                              child: Text(
                                                'Tele Medicine',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF424FFC),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  height: 0,
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
                          ],
                        ),
                      ),
                      const SizedBox(width: 13),
                      Container(
                        width: 120,
                        height: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE6F2FB),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 18,
                              child: Container(
                                width: 60,
                                height: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 5,
                                      top: 25,
                                      child: Container(
                                        width: 50,
                                        height: 22.50,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: -29,
                              top: 90,
                              child: SizedBox(
                                width: 179,
                                child: Text(
                                  'Therapy',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF424FFC),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 13),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(color: Color(0xFFE6F2FB)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE7EEF3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: -15,
                              top: 90,
                              child: SizedBox(
                                width: 179,
                                child: Text(
                                  'Voice Diagnosis',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF424FFC),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    height: 0,
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
                left: 22,
                top: 464,
                child: Container(
                  width: 347,
                  height: 235,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 347,
                          height: 235,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 347,
                                  height: 235,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 346,
                                          height: 111,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF9F9F9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 20,
                                                offset: Offset(3, 3),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 16,
                                        child: Text(
                                          'Dr. Kevin Lucy A',
                                          style: TextStyle(
                                            color: Color(0xFF1E1F2E),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 38,
                                        child: Text(
                                          'Therapies',
                                          style: TextStyle(
                                            color: Color(0xFF9C9C9C),
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 79,
                                        child: Text(
                                          'Fee: UGX 15,000',
                                          style: TextStyle(
                                            color: Color(0xFF9C9C9C),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 1,
                                        top: 124,
                                        child: Container(
                                          width: 346,
                                          height: 111,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 346,
                                                  height: 111,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 346,
                                                          height: 111,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                  width: 346,
                                                                  height: 111,
                                                                  decoration: ShapeDecoration(
                                                                    color: Color(0xFFF9F9F9),
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(20),
                                                                    ),
                                                                    shadows: [
                                                                      BoxShadow(
                                                                        color: Color(0x3F000000),
                                                                        blurRadius: 20,
                                                                        offset: Offset(6, 7),
                                                                        spreadRadius: 0,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 128,
                                                                top: 16,
                                                                child: Text(
                                                                  'Dr Kasekende  ',
                                                                  style: TextStyle(
                                                                    color: Color(0xFF1E1F2E),
                                                                    fontSize: 15,
                                                                    fontFamily: 'Poppins',
                                                                    height: 0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 128,
                                                                top: 38,
                                                                child: SizedBox(
                                                                  width: 113,
                                                                  child: Text(
                                                                    'Senior Surgeon',
                                                                    style: TextStyle(
                                                                      color: Color(0xFF9C9C9C),
                                                                      fontSize: 12,
                                                                      fontFamily: 'Poppins',
                                                                      height: 0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 128,
                                                                top: 79,
                                                                child: Text(
                                                                  'Fee: UGX 15,000',
                                                                  style: TextStyle(
                                                                    color: Color(0xFF9C9C9C),
                                                                    fontSize: 15,
                                                                    fontFamily: 'Poppins',
                                                                    height: 0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 139,
                                                                top: 61,
                                                                child: Text(
                                                                  '10:30 AM-3:30',
                                                                  style: TextStyle(
                                                                    color: Color(0xFF333333),
                                                                    fontSize: 13,
                                                                    fontFamily: 'Poppins',
                                                                    height: 0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 313,
                                                                top: 12,
                                                                child: Text(
                                                                  '4.3',
                                                                  style: TextStyle(
                                                                    color: Color(0xFF333333),
                                                                    fontSize: 13,
                                                                    fontFamily: 'Poppins',
                                                                    height: 0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 128,
                                                                top: 66,
                                                                child: Container(
                                                                  width: 8.75,
                                                                  height: 10,
                                                                  decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      image: NetworkImage("https://picsum.photos/9/10"),
                                                                      fit: BoxFit.fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 302,
                                                                top: 67,
                                                                child: Container(
                                                                  width: 32,
                                                                  height: 32,
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned(
                                                                        left: 0,
                                                                        top: 0,
                                                                        child: Container(
                                                                          width: 32,
                                                                          height: 32,
                                                                          decoration: ShapeDecoration(
                                                                            color: Color(0xFF1E1F2E),
                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        left: 2,
                                                                        top: 3,
                                                                        child: Container(
                                                                          width: 26,
                                                                          height: 26,
                                                                          padding: const EdgeInsets.symmetric(horizontal: 2.17, vertical: 3.79),
                                                                          child: Row(
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
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 14,
                                                        top: 12,
                                                        child: Container(
                                                          width: 88,
                                                          height: 87,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                  width: 88,
                                                                  height: 87,
                                                                  decoration: ShapeDecoration(
                                                                    color: Color(0xFFD9D9D9),
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(14),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: -41,
                                                                top: 0,
                                                                child: Container(
                                                                  width: 164,
                                                                  height: 109,
                                                                  decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      image: NetworkImage("https://picsum.photos/164/109"),
                                                                      fit: BoxFit.fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 139,
                                        top: 61,
                                        child: Text(
                                          '10:30 AM-3:30',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 313,
                                        top: 12,
                                        child: Text(
                                          '4.9',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 66,
                                        child: Container(
                                          width: 8.75,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://picsum.photos/9/10"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 302,
                                        top: 67,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 32,
                                                  height: 32,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF1E1F2E),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 2,
                                                top: 3,
                                                child: Container(
                                                  width: 26,
                                                  height: 26,
                                                  padding: const EdgeInsets.symmetric(horizontal: 2.17, vertical: 3.79),
                                                  child: Row(
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 23,
                                top: 12,
                                child: Container(
                                  width: 88,
                                  height: 87,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 88,
                                          height: 87,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFD9D9D9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(14),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -41,
                                        top: 0,
                                        child: Container(
                                          width: 164,
                                          height: 109,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://picsum.photos/164/109"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 712,
                child: Container(
                  width: 346,
                  height: 111,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 346,
                          height: 111,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 346,
                                  height: 111,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 346,
                                          height: 111,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF9F9F9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 20,
                                                offset: Offset(6, 7),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 16,
                                        child: Text(
                                          'Dr Janan  ',
                                          style: TextStyle(
                                            color: Color(0xFF1E1F2E),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 38,
                                        child: Text(
                                          'Senior Surgeon',
                                          style: TextStyle(
                                            color: Color(0xFF9C9C9C),
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 79,
                                        child: Text(
                                          'Fee: UGX 15,000',
                                          style: TextStyle(
                                            color: Color(0xFF9C9C9C),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 139,
                                        top: 61,
                                        child: Text(
                                          '10:30 AM-3:30',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 313,
                                        top: 12,
                                        child: Text(
                                          '4.2',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 128,
                                        top: 66,
                                        child: Container(
                                          width: 8.75,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://picsum.photos/9/10"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 302,
                                        top: 67,
                                        child: Container(
                                          width: 32,
                                          height: 32,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 32,
                                                  height: 32,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF1E1F2E),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 2,
                                                top: 3,
                                                child: Container(
                                                  width: 26,
                                                  height: 26,
                                                  padding: const EdgeInsets.symmetric(horizontal: 2.17, vertical: 3.79),
                                                  child: Row(
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 23,
                                top: 12,
                                child: Container(
                                  width: 88,
                                  height: 87,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 88,
                                          height: 87,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFD9D9D9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(14),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -41,
                                        top: 0,
                                        child: Container(
                                          width: 164,
                                          height: 109,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://picsum.photos/164/109"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 47,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 27,
                        top: 14,
                        child: Container(
                          width: 54,
                          height: 21,
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
                                    fontFamily: 'Inter',
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 286,
                        top: 19,
                        child: Container(
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