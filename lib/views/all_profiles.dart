import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devathon_app/views/Appoinment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          // controller: controller,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: AppColors.lightblurColor,
            label: Text('Search'),
            labelStyle:
                TextStyle(fontSize: 12, color: Colors.black, letterSpacing: .5),
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            suffixIconColor: AppColors.blurColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.purple, width: 2.5)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.blurColor, width: 2.5)),
          ),
        ),
        Expanded(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Doctors')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData)
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot abc = snapshot.data!.docs[index];

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Appoinment(
                                          data: abc.data()!
                                              as Map<String, dynamic>)));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 120,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      // Image.asset(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/download.jfif'),
                                        ),
                                      ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      BorderRadius.circular(
                                                          20)),
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
                                      color:
                                          Color.fromARGB(162, 185, 196, 196))),
                            ),
                          );
                        });
                  else {
                    return CircularProgressIndicator();
                  }
                }))
      ]),
    );
  }
}

// List abc = [
//   {'name': 'Dr. khalid', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Naeem', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Faheem', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Akbar', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Nisha', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Talha', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Bilal', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Haseeb', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Mohib', 'specialIn': 'Heart Surgeon', 'image': ''},
//   {'name': 'Dr. Naseem', 'specialIn': 'General Dentist', 'image': ''},
//   {
//     'name': 'Dr. Taber',
//     'specialIn': 'Heart Surgeon',
//   },
// ];
