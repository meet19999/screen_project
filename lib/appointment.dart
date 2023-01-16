import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_project/payment.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  String? _range;
  List date = [
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 AM',
    '12:30 AM',
  ];
  int? id;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset(
          "assets/images/left.png",
          alignment: Alignment.centerRight,
        ),
        title: Text(
          "Appoinment".toUpperCase(),
          style: const TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: 90,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: const Color(0xFF2C2C2E),
                  child: Row(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 6.0, horizontal: 4),
                        child: CircleAvatar(
                          // backgroundColor: Colors.white,
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/p.jpg'),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Emily Kevin",
                                  style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Image.asset("assets/images/Point.png"),
                              ],
                            ),
                            Text(
                              "High Intensity Training",
                              style: GoogleFonts.rubik(
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: const Color(0xFFD0FD3E)),
                            ),
                            SizedBox(
                              height: height / 50,
                            ),
                            Text(
                              "2 years experience",
                              style: GoogleFonts.rubik(
                                  //  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: const Color(0xFFD0FD3E)),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            // height: height * 0.33,
            width: width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF2C2C2E),
            ),
            child: Column(
              children: [
                SfDateRangePicker(
                  selectionColor: const Color(0xffD0FD3E),
                  backgroundColor: const Color(0xff2C2C2E),
                  onSelectionChanged: _onSelectionChanged,
                  // selectionMode: DateRangePickerSelectionMode.range,
                  // initialSelectedRange: PickerDateRange(
                  //     DateTime.now().subtract(const Duration(days: 4)),
                  //     DateTime.now().add(const Duration(days: 3))),
                ),
                const Divider(
                  height: 5,
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: date.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            id = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Chip(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: id == index
                                      ? const Color(0xffD0FD3E)
                                      : Colors.white,
                                ),
                                borderRadius:
                                    BorderRadiusDirectional.circular(25)),
                            label: Text(
                              date[index],
                              style: GoogleFonts.rubik(color: Colors.white),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            backgroundColor: const Color(0xFF2C2C2E),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height / 5,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => const Payment()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xffD0FD3E),
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: GoogleFonts.rubik(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      // if (args.value is PickerDateRange) {
      //   // _range = '${Date('dd/MM/yyyy').format(args.value.startDate)}';
      //   // ignore: lines_longer_than_80_chars
      //   // _rangeCount = ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate)}';
      // }
    });
  }
}
