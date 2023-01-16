import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_project/addNewCard.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List _image = ['assets/images/g2.jpg', 'assets/images/g1.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/left.png",
            alignment: Alignment.centerRight,
          ),
        ),
        title: Text(
          "Payment".toUpperCase(),
          style: const TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Method",
              style: GoogleFonts.rubik(color: Colors.white, fontSize: 16),
            ),
            Container(
              height: 130,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFF2C2C2E)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                // color: Colors.teal,
                                image: DecorationImage(
                                    image: AssetImage(_image[index - 1]),
                                    fit: BoxFit.cover)),
                          ),
                        );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Order Details",
              style: GoogleFonts.rubik(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                // height: 90,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trainer",
                              style: GoogleFonts.rubik(
                                  fontSize: 16, color: Colors.white),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6.0, horizontal: 4),
                              child: CircleAvatar(
                                // backgroundColor: Colors.white,
                                radius: 35,
                                backgroundImage:
                                    AssetImage('assets/images/p.jpg'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Image.asset("assets/images/Point.png"),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "High Intensity Training",
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: const Color(0xFFD0FD3E)),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Date",
              style: GoogleFonts.rubik(color: Colors.white.withOpacity(.6)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "20 October 2021 - Wednesday",
              style: GoogleFonts.rubik(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Time",
              style: GoogleFonts.rubik(color: Colors.white.withOpacity(.6)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "09:30 AM",
              style: GoogleFonts.rubik(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Estimated Cost',
                  style: GoogleFonts.rubik(
                      fontSize: 14, color: Colors.white.withOpacity(.7)),
                ),
                Text(
                  '\$ 175.99',
                  style: GoogleFonts.rubik(fontSize: 14, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 10,
              indent: 0,
              endIndent: 0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 160,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) => const addNewCard()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
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
      ),
    );
  }
}
