import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Appoinment extends StatefulWidget {
  final Map data;

  const Appoinment({super.key, required this.data});

  @override
  State<Appoinment> createState() => _AppoinmentState();
}

class _AppoinmentState extends State<Appoinment> {
  bool onTap = false;
  bool onTap2 = false;
  bool onTap3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Appoinment',
                    style: TextStyle(
                        color: Color(0xff232F55),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/download.jfif'),
            ),
            SizedBox(height: 20),
            Text(
              widget.data['name'],
              style: TextStyle(
                  color: Color(0xff232F55),
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.all(15),
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: AppColors.purple),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          Text(
                            '350+',
                            style: TextStyle(
                                fontSize: 26, color: AppColors.purple),
                          ),
                          Text('Patients'),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          Text(
                            '15+',
                            style: TextStyle(
                                fontSize: 26, color: Color(0xffFF9A9A)),
                          ),
                          Text('Exp. years'),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          Text(
                            '284+',
                            style:
                                TextStyle(fontSize: 26, color: AppColors.green),
                          ),
                          Text('Reviews'),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'About Doctors',
                  style: TextStyle(
                      color: Color(0xff232F55),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                ''' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Schedules',
                    style: TextStyle(
                        color: Color(0xff232F55),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.arrow_back_ios),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(15),
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.white),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTap = !onTap;
                        setState(() {});
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: onTap ? Colors.purple : Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Column(
                          children: [
                            Text(
                              '7',
                              style: TextStyle(
                                  fontSize: 26,
                                  color:
                                      onTap ? Colors.white : AppColors.purple),
                            ),
                            Text(
                              'Monday',
                              style: TextStyle(
                                  color: onTap ? Colors.white : AppColors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        onTap2 = !onTap2;
                        setState(() {});
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: onTap2 ? Colors.purple : Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 26,
                                  color:
                                      onTap2 ? Colors.white : AppColors.purple),
                            ),
                            Text(
                              'Tue',
                              style: TextStyle(
                                  color:
                                      onTap2 ? Colors.white : AppColors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        onTap3 = !onTap;
                        setState(() {});
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            color: onTap3 ? Colors.purple : Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        child: Column(
                          children: [
                            Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 26,
                                  color:
                                      onTap3 ? Colors.white : AppColors.purple),
                            ),
                            Text(
                              'wed',
                              style: TextStyle(
                                  color:
                                      onTap3 ? Colors.white : AppColors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColors.purple),
                onPressed: () async {
                  CircularProgressIndicator();
                  await FirebaseFirestore.instance
                      .collection('Appoinments')
                      .add({
                    'Appoinment': 'Appoinment book for ${widget.data['name']}',
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Appoinment Booked!'),
                    backgroundColor: Colors.purple[100],
                  ));
                },
                child: Text('Book Appoinment'))
          ]),
        ),
      ),
    );
  }
}
