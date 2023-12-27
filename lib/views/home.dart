import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devathon_app/constants/colors.dart';
import 'package:devathon_app/views/all_profiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Stream<QuerySnapshot> doctors =
      FirebaseFirestore.instance.collection('Doctors').snapshots();
  // data(){
  //    doctors.doc().get();
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      filterQuality: FilterQuality.high,
                      height: 50,
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7QCTMxImO-NSOYp_Ac028sQoWUmrX5xoOJQ&usqp=CAU'),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
          ],
          elevation: 0,
          leading: Image.asset('assets/images/Group 34205.png'),
          backgroundColor: AppColors.purple,
        ),
        drawer: Drawer(
          child: Column(children: []),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              height: 340,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Let’s find\nyour top doctor!',
                      style: GoogleFonts.poppins(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Doctor’s Inn',
                      style: GoogleFonts.poppins(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profiles()));
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Image.asset('assets/images/all.png'),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(194, 247, 248, 248),
                                offset: Offset(2, 2),
                              ),
                              BoxShadow(
                                color: Color.fromARGB(194, 247, 248, 248),
                                offset: Offset(-3, -3),
                              )
                            ],
                            border: Border.all(
                                width: 2.5,
                                color: Color.fromARGB(162, 185, 196, 196))),
                      ),
                    ),
                    Text(
                      'All',
                      style: TextStyle(
                        color: Color(0xff7D8BB7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/cardiology.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(194, 247, 248, 248),
                              offset: Offset(2, 2),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(194, 247, 248, 248),
                              offset: Offset(-3, -3),
                            )
                          ],
                          border: Border.all(
                              width: 2.5,
                              color: Color.fromARGB(162, 185, 196, 196))),
                    ),
                    Text(
                      'Cardiology',
                      style: TextStyle(
                        color: Color(0xff7D8BB7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/medicines.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(194, 247, 248, 248),
                              offset: Offset(2, 2),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(194, 247, 248, 248),
                              offset: Offset(-3, -3),
                            )
                          ],
                          border: Border.all(
                              width: 2.5,
                              color: Color.fromARGB(162, 185, 196, 196))),
                    ),
                    Text(
                      'Medicine',
                      style: TextStyle(
                        color: Color(0xff7D8BB7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/general.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(194, 247, 248, 248),
                              offset: Offset(2, 2),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(194, 247, 248, 248),
                              offset: Offset(-3, -3),
                            )
                          ],
                          border: Border.all(
                              width: 2.5,
                              color: Color.fromARGB(162, 185, 196, 196))),
                    ),
                    Text(
                      'General',
                      style: TextStyle(
                        color: Color(0xff7D8BB7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Doctors')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot abc = snapshot.data!.docs[index];
                          // return Text('data');

                          return Container(
                            margin: EdgeInsets.all(10),
                            height: 120,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    // Image.asset(),
                                    Image.asset(
                                        width: 35,
                                        'assets/images/git profile.jpg'),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_half_outlined,
                                          color: AppColors.green,
                                        ),
                                        Text('4.4')
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      abc['name'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          letterSpacing: 2,
                                          color: Color(0xff263257)),
                                    ),
                                    Text(
                                      abc['specialIn'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          letterSpacing: 2,
                                          color: Color(0xff7D8BB7)),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            backgroundColor: Color.fromARGB(
                                                255, 233, 235, 235)),
                                        onPressed: () {},
                                        child: Text(
                                          'Appointment',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              // letterSpacing: 1/,
                                              color: Color(0xff263257)),
                                        ))
                                  ],
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(194, 247, 248, 248),
                                    offset: Offset(2, 2),
                                  ),
                                  BoxShadow(
                                    color: Color.fromARGB(194, 247, 248, 248),
                                    offset: Offset(-3, -3),
                                  )
                                ],
                                border: Border.all(
                                    width: 2.5,
                                    color: Color.fromARGB(162, 185, 196, 196))),
                          );
                        });
                  }
                  return CircularProgressIndicator();
                })
          ]),
        ),
      ),
    );
  }
}
