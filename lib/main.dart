import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomField.dart';
import 'CustomText.dart';
import 'customRow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = '';
  String fromCity = '';
  String toCity = '';
  String classOfFlight = '';
  String dateOfFlight = '';
  String noOfPassengers = '';
  bool isTicketVisible = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var hod = MediaQuery.sizeOf(context).height;
    var wod = MediaQuery.sizeOf(context).width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
            backgroundColor: Color(0xff031926),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                height: hod,
                width: wod,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ticket Booking Platform',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: wod,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // left column
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, left: 30, top: 30),
                              child: SizedBox(
                                width: wod * 0.35,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Enter Your Details here',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      CustomField(
                                        fieldHeading: 'Name',
                                        hintText: 'Name of the passenger',
                                        onChanged: (value) {
                                          setState(() {
                                            name = value;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomField(
                                        fieldHeading: 'From',
                                        hintText: 'Enter from city',
                                        onChanged: (value) {
                                          setState(() {
                                            fromCity = value;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomField(
                                        fieldHeading: 'To',
                                        hintText: 'Enter to city',
                                        onChanged: (value) {
                                          setState(() {
                                            toCity = value;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomField(
                                        fieldHeading: 'Class',
                                        hintText: 'ex: Economy',
                                        onChanged: (value) {
                                          setState(() {
                                            classOfFlight = value;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CustomField(
                                              fieldHeading: 'Date',
                                              hintText: 'Enter Date of travel',
                                              onChanged: (value) {
                                                setState(() {
                                                  dateOfFlight = value;
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: CustomField(
                                              fieldHeading: 'No.of Passengers',
                                              hintText: 'ex: 1',
                                              onChanged: (value) {
                                                setState(() {
                                                  noOfPassengers = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: wod / 6,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xfff57721),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30))),
                                          onPressed: () {
                                            setState(() {
                                              if (name != '' &&
                                                  fromCity != '' &&
                                                  toCity != '' &&
                                                  classOfFlight != '' &&
                                                  dateOfFlight != '' &&
                                                  noOfPassengers != '') {
                                                isTicketVisible = true;
                                              } else {
                                                isTicketVisible = false;
                                              }
                                            });
                                          },
                                          child: const customText(
                                            text: 'BOOK NOW',
                                            fontSize: 18,
                                            fontweight: FontWeight.w600,
                                            textcolor: Colors.white,
                                          ),
                                        ),
                                      )
                                      // ticket details column end
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 50,
                            ),

                            // -------------- RIGHT COLUMN TICKET WIDGET -------------------
                            Visibility(
                              visible: isTicketVisible,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, left: 30, top: 80, bottom: 50),
                                child: Container(
                                  height: hod / 1.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  width: wod * 0.25,
                                  child: Padding(
                                    padding: EdgeInsets.all(30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xfff57721),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              '$classOfFlight Saver',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        customText(
                                          text:
                                              '$noOfPassengers Flight Tickets',
                                          fontSize: 20,
                                          fontweight: FontWeight.w700,
                                          textcolor: Colors.black,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        CustomRow(
                                            heading1: 'Name',
                                            value1: name,
                                            heading2: 'Date',
                                            value2: dateOfFlight),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        CustomRow(
                                            heading1: 'Flight',
                                            value1: '99837633',
                                            heading2: 'Gate',
                                            value2: 'G-17'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        CustomRow(
                                            heading1: 'From',
                                            value1: fromCity,
                                            heading2: 'To',
                                            value2: toCity),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        CustomRow(
                                            heading1: 'Class',
                                            value1: classOfFlight,
                                            heading2: 'Seats',
                                            value2: '17 B - 25 B'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Divider(
                                          height: 1,
                                          thickness: 1,
                                          color: Colors.black54,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 60,
                                          width: double.infinity,
                                          color: Colors.black54,
                                        )
                                        // right column out
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
