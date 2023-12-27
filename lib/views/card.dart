import 'package:devathon_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          // Center(child: Text('dakjk')

          Center(
        child: Container(
          height: 120,
          width: double.infinity,
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/all.png'),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. khalid',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Color(0xff263257)),
                  ),
                  Text(
                    'herart sufnhnrdj',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Color(0xff7D8BB7)),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color.fromARGB(255, 233, 235, 235)),
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
                  width: 2.5, color: Color.fromARGB(162, 185, 196, 196))),
        ),
        // child: Container(
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   width: double.infinity,
        //   child: Container(
        //     height: 120,
        //     color: Colors.white,
        //     child: Row(
        //       children: [
        //         Padding(

        //           padding: const EdgeInsets.fromLTRB(10, 20, 5, 15),
        //           child: Column(
        //             children: [
        //               Container(
        //                   height: 50,
        //                   width: 50,
        //                   decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(20)),
        //                   child: Image.asset(
        //                       'assets/images/mohtashim.jpeg') // backgroundColor: Color(0xff00C1AA),
        //                   ),
        //               Row(
        //                 children: [
        //                   Icon(
        //                     Icons.star_half_outlined,
        //                     color: AppColors.green,
        //                   ),
        //                   Text('4.4')
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(top: 5, bottom: 5),
        //               child: Text(
        //                 'Dr. Maria Waston',
        //                 style: GoogleFonts.poppins(fontSize: 16),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 0.0),
        //               child: Text(
        //                 'Heart Surgeon, London, England',
        //                 style: GoogleFonts.poppins(
        //                     fontSize: 16, color: Colors.grey),
        //               ),
        //             )
        //           ],
        //         ),
        //         // Spacer(),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
